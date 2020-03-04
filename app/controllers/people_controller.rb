class PeopleController < ApplicationController

def index
    people = Person.all
    render json: people
end    

def show
    person = Person.find_by(id: params[:id])
    render json: person
end    

def create
    person = Person.all.new(name: params[:name])
    if person.save
        render json: person
    end
end
  
private 

def people_params
    params.require(:job.permit(:name, :id))
end


    



    
end #class end
