class Task < ApplicationRecord
  belongs_to :project

  PRIORITIES = ['Low','Medium','High','Urgent']

  def complete!
    self.done = true
    save
  end

  def priority!
    self.priority == 0 ? self.priority = 1 :
      self.priority == 1 ? self.priority = 2 :
        self.priority == 2 ? self.priority = 3 : self.priority
    save
  end
  
end
