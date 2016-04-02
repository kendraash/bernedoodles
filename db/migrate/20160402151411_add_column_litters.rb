class AddColumnLitters < ActiveRecord::Migration
  def change
        add_column :litters, :sold, :boolean, :default => false
  end
end
