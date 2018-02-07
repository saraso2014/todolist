class Project < ApplicationRecord
    validates :name,    presence: true,
                        length: { in: 4..100 }
    has_many :tasks, dependent: :delete_all
end
