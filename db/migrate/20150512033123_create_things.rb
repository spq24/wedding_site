class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.string :image
      t.string :video
      t.timestamps
    end
  end
end
