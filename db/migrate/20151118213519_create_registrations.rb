class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|

      t.references  :puppy_id, index: true
      t.string   :full_name
      t.string   :company
      t.string   :email
      t.string   :telephone
      t.text     :notification_params
      t.string   :status
      t.string   :transaction_id
      t.datetime :purchased_at
      t.references  :user_id, index:true

      t.timestamps
    end

  end
end
