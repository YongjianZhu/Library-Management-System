class CreateLibrarybooklists < ActiveRecord::Migration[6.0]
  def change
    create_table :librarybooklists do |t|
      t.belongs_to :book, null: false, foreign_key: true
      t.integer :number
      t.belongs_to :library, null: false, foreign_key: true
      t.belongs_to :university, null: false, foreign_key: true

      t.timestamps
    end
  end
end
