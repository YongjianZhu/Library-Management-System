class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :language
      t.text :published
      t.integer :edition
      t.string :subject
      t.text :summary
      t.integer :special
      t.belongs_to :university, null: false, foreign_key: true
      t.belongs_to :library, null: false, foreign_key: true

      t.timestamps
    end
  end
end
