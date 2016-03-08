class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
    	t.string :name
    	t.integer :user_id
    end
  end
end
