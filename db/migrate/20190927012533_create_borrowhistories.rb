class CreateBorrowhistories < ActiveRecord::Migration[6.0]
  def change
    create_table :borrowhistories do |t|
      t.belongs_to :library, null: false, foreign_key: true
      t.belongs_to :university, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
