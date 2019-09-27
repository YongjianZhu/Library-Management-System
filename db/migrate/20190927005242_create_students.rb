class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :email
      t.string :name
      t.string :password
      t.integer :education
      t.belongs_to :university, null: false, foreign_key: true
      t.integer :maximum

      t.timestamps
    end
  end
end
