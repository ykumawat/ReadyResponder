class Inspection < ActiveRecord::Base
  belongs_to :item
  belongs_to :person
  has_many :inspection_questions
  validates :inspection_date, :item, presence: true

  STATUS_CHOICES = ['Complete - Passed', 'Complete - Failed', 'Incomplete'].freeze
end
