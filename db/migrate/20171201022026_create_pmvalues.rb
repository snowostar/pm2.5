class CreatePmvalues < ActiveRecord::Migration
  def change
    create_table :pmvalues do |t|
      t.integer :No
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :hour
      t.string :pm2.5
      t.integer :DEWP
      t.string :TEMP
      t.integer :PRES
      t.string :cbwd
      t.double :lws
      t.integer :ls
      t.integer :lr

      t.timestamps null: false
    end
  end
end
