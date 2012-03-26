class Emp < ActiveRecord::Base
   has_and_belongs_to_many :qualifications
   validates :name, :presence => true
   validates :age, :presence => true

end
