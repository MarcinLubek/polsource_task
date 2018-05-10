class AddIsArchivedToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :is_archived, :boolean, default: false
  end
end
