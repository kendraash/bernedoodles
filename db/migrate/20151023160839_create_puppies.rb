class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.string :name
      t.string :sex
      t.datetime :date_of_birth
      t.integer :litter_id
      t.integer :user_id
      t.integer :weight

      t.timestamps
    end
  end
end
