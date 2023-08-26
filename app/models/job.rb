class Job < ApplicationRecord
  validates :title, presence: true
  validates :desc, presence: true, length: { minimum: 10 }
end
