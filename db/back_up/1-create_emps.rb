class CreateEmps < ActiveRecord::Migration
  def self.up
    create_table :emps do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :age, :int
      t.timestamps
    end
  end

  def self.down
    drop_table :emps
  end
end
