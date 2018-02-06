class CreateVidlists < ActiveRecord::Migration[5.1]
  def change
    create_table :vidlists do |t|
      t.string :link_id
      t.string :tags

      t.timestamps
    end
  end
end
