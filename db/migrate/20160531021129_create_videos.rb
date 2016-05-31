class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :video
      t.text :description
      t.string :tags

      t.timestamps null: false
    end
  end
end
