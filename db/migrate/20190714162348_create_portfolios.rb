class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :photo_link
      t.string :phone
      t.text :about, null: false

      t.timestamps
    end
  end
end
