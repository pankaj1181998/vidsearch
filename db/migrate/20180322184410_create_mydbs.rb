class CreateMydbs < ActiveRecord::Migration[5.1]
  def change
    create_table :mydbs do |t|
      t.string :title
      t.string :vid_link
      t.string :image

      t.timestamps
    end
  end
end
