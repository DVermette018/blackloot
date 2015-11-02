class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :color
      t.string :description
      t.string :price
      
      t.timestamps
    end
  end
end
