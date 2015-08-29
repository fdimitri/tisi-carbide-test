class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :desc
      t.string :reproSteps
      t.references :User, index: true, foreign_key: true
      t.references :AssignedUser, index: true, foreign_key: true
      t.references :Priority, index: true, foreign_key: true
      t.references :State, index: true, foreign_key: true
      t.references :osdef, index: true, foreign_key: true
      t.references :Hardware, index: true, foreign_key: true
      t.references :TicketCategory, index: true, foreign_key: true
      t.references :TicketGroup, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
