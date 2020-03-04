class Work < ApplicationRecord
  belongs_to :person
  belongs_to :job
  
  def get_work
    self.events
  end


end
