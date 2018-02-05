class Task < ApplicationRecord
  belongs_to :project

  PRIORITIES = ['Low','Medium','High','Urgent']

  def complete!
    self.done = true
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
  
end
