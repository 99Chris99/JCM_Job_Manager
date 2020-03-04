class Person < ApplicationRecord
    has_many :works
    has_many :jobs, through: :works
    
    def get_people
        self.events
    end
    
    
end