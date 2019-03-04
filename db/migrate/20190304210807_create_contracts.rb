class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.references :client, foreign_key: true
      t.float :price
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
