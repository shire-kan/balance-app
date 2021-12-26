class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.integer         :price,         null: false
      t.integer         :category_id
      t.string          :memo
      t.references      :user,       null: false
      t.timestamps
    end
  end
end
