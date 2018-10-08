class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text :name
      t.integer :age
      t.text :city
      t.string :deceased?
      t.string :disgraced?
      t.string :picture_url
      
      t.timestamps null:false
    end
  end
end
