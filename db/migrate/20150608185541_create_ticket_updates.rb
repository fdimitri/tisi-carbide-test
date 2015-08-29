class CreateTicketUpdates < ActiveRecord::Migration
  def change
    create_table :ticket_updates do |t|
      t.string :title
      t.text :desc
      t.references :Ticket, index: true, foreign_key: true
      t.references :User, index: true, foreign_key: true
      t.references :AssignedUser, index: true, foreign_key: true
      t.references :State, index: true, foreign_key: true
      t.references :Priority, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
