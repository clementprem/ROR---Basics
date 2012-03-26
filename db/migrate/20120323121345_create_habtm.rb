class CreateHabtm < ActiveRecord::Migration

create_table :emps_qualifications, :id => false do |t|
  t.references :emp, :qualification
end

add_index :emps_qualifications, [:emp_id, :qualification_id]

  end