class JobsController < ApplicationController

def index
    jobs = Job.all 
    render json: jobs
end

def show
    job = Job.find_by(id:params[:id])
    render json: job
end

def create
    job = Job.new(name: params[:name], status: params[:status], start_date: params[:start_date], finish_date: params[:finish_date], extid: params[:extid], notes: notes[:notes])
        if job.save
            render json: job
        else
            render json: {errors: job.errors.full_message }, status: 403
        end
end

def update
    job = Job.find(params[:id])
    if job.update(job: params[:job])
        render json: job
    end
end


def destroy
    job = Job.find_by(id:params[:id])
    if job
        job.destroy
        render json: job
    end
end

private 

def job_params
    params.require(:job.permit(:name, :status, :start_date, :finish_date, :extid, :notes))
end


end #class end

