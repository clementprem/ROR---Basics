class Qualification < ActiveRecord::Base
  has_and_belongs_to_many :emps

  validates_presence_of :name
end
