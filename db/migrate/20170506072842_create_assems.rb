class CreateAssems < ActiveRecord::Migration
  def change
    create_table :assems do |t|
      t.string :name
      t.string :precinct
      t.string :party
      t.string :elec_count
      t.string :email
      t.string :home_url
      t.string :call_number
      t.string :man_key
      t.timestamps null: false
    end
  end
end
