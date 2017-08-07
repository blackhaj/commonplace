class AddTypeToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :type, :integer
  end
end
