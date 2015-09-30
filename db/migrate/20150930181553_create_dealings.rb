class CreateDealings < ActiveRecord::Migration
  def change
    create_table :dealings do |t|
      t.decimal :amount
      t.string :receiver
      t.string :deal_type

      t.timestamps null: false
    end
  end
end
