class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :base_price
      t.integer :interval_days
      t.text :description

      t.timestamps
    end
  end
end
