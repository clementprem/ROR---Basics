class CreateEmpQualifications < ActiveRecord::Migration
 def self.up
    create_table :emp_qualifications do |t|

       t.integer :emp_id
      t.integer :qualification_id
    end
 end
  def self.down
    
  end
end

