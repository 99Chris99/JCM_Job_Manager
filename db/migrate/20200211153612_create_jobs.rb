class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :extid
      t.string :name
      t.string :status
      t.datetime :start_date
      t.datetime :finish_date
      t.string :notes

      t.timestamps
    end
  end
end
