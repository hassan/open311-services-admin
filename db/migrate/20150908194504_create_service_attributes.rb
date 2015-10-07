class CreateServiceAttributes < ActiveRecord::Migration
  def change
    create_table :service_attributes do |t|
      t.integer :service_definition_id
      t.boolean :variable
      t.string :code
      t.string :datatype
      t.boolean :required
      t.text :datatype_description
      t.integer :order
      t.text :description

      t.timestamps null: false
    end
  end
end
