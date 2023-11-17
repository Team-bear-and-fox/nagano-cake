class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false
      t.integer :postaeg, null: false
      # 送料のデフォルト値不要と判断　コントローラで不具合があったらここを確認
      t.integer :payment_method, null: false, default: 0
      t.integer :payment_total, null: false
      t.integer :order_status, null: false, default: 0
      t.string :name, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.timestamps
    end
  end
end
