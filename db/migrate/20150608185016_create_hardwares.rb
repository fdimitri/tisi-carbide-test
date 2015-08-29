class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
