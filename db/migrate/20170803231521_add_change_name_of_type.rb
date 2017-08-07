class AddChangeNameOfType < ActiveRecord::Migration[5.1]
  def change
    rename_column :notes, :type, :note_type
  end
end
