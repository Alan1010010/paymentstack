class CreateAdyencheckouts < ActiveRecord::Migration[6.0]
  def change
    create_table :adyencheckouts do |t|
      t.string :name
      t.text :payment_data

      t.timestamps
    end
  end
end
