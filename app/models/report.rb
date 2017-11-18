class Report < ApplicationRecord
  validates :title, :message, presence: true
end
