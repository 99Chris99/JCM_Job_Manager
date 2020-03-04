class Job < ApplicationRecord
    has_many :works
    has_many :people, through: :works
    
    def get_jobs
        self.job
    end
    
    
end