class Task < ApplicationRecord
  belongs_to :project

  PRIORITIES = [
    ['Low', 1],
    ['Medium', 2],
    ['High', 3],
    ['Urgent', 4]
  ]

  def complete!
    self.done = true
    save
  end
  
end
