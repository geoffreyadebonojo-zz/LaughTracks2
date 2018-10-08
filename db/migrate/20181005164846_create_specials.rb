class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :name
      t.integer :comedian_id
      t.string :image_url
      t.integer :runtime
      t.string :watch_now_url
      t.string :year
    end
  end
end
