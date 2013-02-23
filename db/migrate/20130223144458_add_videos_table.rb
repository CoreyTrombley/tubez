class AddVideosTable < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :Title
      t.string :url
      t.integer :views

      t.timestamps
    end
  end
end
