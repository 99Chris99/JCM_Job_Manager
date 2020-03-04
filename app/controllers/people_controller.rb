class PeopleController < ApplicationController

def index
    people = Person.all
    render json: people
end    

def show
    person = Person.find_by(name: params[:name])
    render json: person
end    

def create
    person = Person.all.new(name: params[:name])
    if person.save
        render json: person
    end
end


  
    


    



    
end #class end
