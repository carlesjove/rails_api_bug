class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name, limit: 30
      t.string :slug, limit: 30
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
    add_index :plans, :name, unique: true
    add_index :plans, :slug, unique: true
  end
end
