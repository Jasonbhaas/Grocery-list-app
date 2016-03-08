class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :name
    	t.integer :quantity
    	t.text :description
    	t.integer :before
    	t.integer :after
    end
  end
end
