class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
            t.column :name, :string
      t.timestamps
    end
  end
  
end
