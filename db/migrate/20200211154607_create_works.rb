class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.time :duration
      t.date :date
      t.string :work_notes
      t.references :job
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
