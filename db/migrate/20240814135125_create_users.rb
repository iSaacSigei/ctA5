class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :name
      t.string :email
      t.string :contact
      t.string :address
      t.string :city
      t.string :state_province

      t.timestamps
    end
  end
end
