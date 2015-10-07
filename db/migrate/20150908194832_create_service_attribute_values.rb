class CreateServiceAttributeValues < ActiveRecord::Migration
  def change
    create_table :service_attribute_values do |t|
      t.integer :service_attribute_id
      t.string :key
      t.string :name

      t.timestamps null: false
    end
  end
end
