class CreateLitters < ActiveRecord::Migration
  def change
    create_table :litters do |t|
      t.datetime :due_date
      t.integer :user_id
      t.integer :dog_id

      t.timestamps
    end
  end
end
