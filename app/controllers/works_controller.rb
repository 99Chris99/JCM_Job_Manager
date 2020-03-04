class WorksController < ApplicationController

    def index
        works = Work.all 
        render json: works
    end
    
    def show
        work = Work.find_by(id:params[:id])
        render json: work
    end
    
    def create
        work = Work.new(duration: params[:duration], date: params[:date], job_id: params[:job_id], person_id: params[:person_id])
            if work.save
                render json: work
            else
                render json: {errors: work.errors.full_message }, status: 403
            end
    end

    
    def update
        work = Work.find(params[:id])
        if work.update(work: params[:work])
            render json: work
        end
    end
    
    
    def destroy
        work = Work.find_by(id:params[:id])
        if work
            work.destroy
            render json: work
        end
    end
    
    private 
    
    def work_params
        params.require(:work.permit(:duration, :date, :job_id, :person_id))
    end


end #class end
