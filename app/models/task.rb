class Task < ApplicationRecord
  belongs_to :project
  before_create :set_priority

  PRIORITIES = ['Low','Medium','High','Urgent']

  def complete!
    self.status = !self.status
    save
  end

  def priority!
    if self.priority
    self.priority == 3 ? self.priority = 0 : self.priority += 1
    else
      self.priority = 0
    end
    save
  end
  
  private
  def set_priority
    self.priority = 0
  end

end
