class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :display_name
      t.string :image_url

      t.timestamps
    end
  end
end
