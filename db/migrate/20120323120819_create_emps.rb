class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :age, :int
      t.timestamps
    end
  end
  end
  

