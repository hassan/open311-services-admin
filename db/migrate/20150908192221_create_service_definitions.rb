class CreateServiceDefinitions < ActiveRecord::Migration
  def change
    create_table :service_definitions do |t|
      t.integer :service_id
      t.string :service_code

      t.timestamps null: false
    end
  end
end
