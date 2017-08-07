class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :body
      t.text :source
      t.boolean :done
      t.date :date
      t.timestamps
    end
  end
end