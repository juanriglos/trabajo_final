class CreateTurnResources < ActiveRecord::Migration[5.1]
  def change
    create_table :turn_resources do |t|
      t.belongs_to :turn, index: true
      t.belongs_to :resource, index: true

      t.timestamps
    end
  end
end
