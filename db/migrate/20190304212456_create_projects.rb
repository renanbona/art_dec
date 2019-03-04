class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :contract, foreign_key: true
      t.string :name
      t.text :description
      t.date :delivery_date
      t.date :return_date

      t.timestamps
    end
  end
end
