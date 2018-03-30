class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.string :title
      t.string :value
      t.references :card

      t.timestamps
    end
  end
end
