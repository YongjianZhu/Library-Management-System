class CreateStudentborrowlists < ActiveRecord::Migration[6.0]
  def change
    create_table :studentborrowlists do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :book, null: false, foreign_key: true
      t.text :duedate

      t.timestamps
    end
  end
end
