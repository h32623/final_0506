class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :law_number
      t.string :kind
      t.string :sub_name
      t.references :assem
      t.timestamps null: false
    end
  end
end
