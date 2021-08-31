class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.references :supplier, null: false, foreign_key: true
      t.integer :account_number

      t.timestamps
    end
  end
end
