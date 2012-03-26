class Emp < ActiveRecord::Base
  has_and_belongs_to_many :qualifications
  

  validates_presence_of :name, :age, :address
end
