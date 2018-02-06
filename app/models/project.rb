class Project < ApplicationRecord
    validates :name, presence: true
    has_many :tasks, dependent: :delete_all
end
