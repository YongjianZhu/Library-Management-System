class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.references :university, null: false, foreign_key: true
      t.string :location
      t.integer :max_borrowed_days
      t.integer :overdue_fines

      t.timestamps
    end
  end
end
