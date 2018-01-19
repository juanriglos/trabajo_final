class CreateTurns < ActiveRecord::Migration[5.1]
  def change
    create_table :turns do |t|
      t.belongs_to :user, index: true
      t.datetime :start_date
      t.datetime :end_time

      t.timestamps
    end
  end
end
