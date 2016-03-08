class CreateItemlists < ActiveRecord::Migration
  def change
    create_table :itemlists do |t|
    	t.integer :item_id
    	t.integer :list_id
    end
  end
end
