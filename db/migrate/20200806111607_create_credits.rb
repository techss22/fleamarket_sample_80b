class CreateCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :credits do |t|
      t.references :user, null:false, foreign_key:true
      t.string :customer_id, null: false
      t.string :credit_id, null: false
      t.timestamps
    end
  end
end
