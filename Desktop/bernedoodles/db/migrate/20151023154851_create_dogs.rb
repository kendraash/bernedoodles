class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.datetime :date_of_birth
      t.string :sex
      t.integer :user_id

      t.timestamps
    end
  end
end
