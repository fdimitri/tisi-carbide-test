class CreateTicketGroups < ActiveRecord::Migration
  def change
    create_table :ticket_groups do |t|
      t.string :name
      t.string :desc
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
