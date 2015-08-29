class CreateTicketCategories < ActiveRecord::Migration
  def change
    create_table :ticket_categories do |t|
      t.string :name
      t.string :desc
      t.references :User, index: true, foreign_key: true
      t.references :TicketGroup, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
