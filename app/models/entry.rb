class Entry < ActiveRecord::Base
  belongs_to :project

  validates :hours format: {with: /\A[0-9]/ }, presence: true
  validates :minutes format: {with: /\A[0-9]/ }, presence: true
  validates :date presence: true
  validates :project presence: true

end
