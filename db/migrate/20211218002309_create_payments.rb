class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer         :price,         null: false
      t.integer         :category_id
      t.integer         :type_id,       null: false
      t.string          :memo
      t.references      :user,       null: false
      t.timestamps
    end
  end
end
