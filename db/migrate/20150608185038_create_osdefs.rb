class CreateOsdefs < ActiveRecord::Migration
  def change
    create_table :osdefs do |t|
      t.string :name
      t.string :version

      t.timestamps null: false
    end
  end
end
