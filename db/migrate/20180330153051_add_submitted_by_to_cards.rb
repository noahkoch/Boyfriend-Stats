class AddSubmittedByToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :submitted_by, :integer
  end
end
