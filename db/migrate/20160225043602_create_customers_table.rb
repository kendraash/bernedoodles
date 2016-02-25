class CreateCustomersTable < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.column :name, :string
      t.column :list_id, :integer
      t.column :state, :string
      t.column :city, :string

      t.timestamps
    end
  end
end
