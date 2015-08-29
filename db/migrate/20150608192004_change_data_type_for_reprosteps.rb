class ChangeDataTypeForReprosteps < ActiveRecord::Migration
  def self.up
    change_table :Tickets do |t|
      t.change :reproSteps, :text
    end
  end
  def self.down
    change_table :Tickets do |t|
      t.change :reproSteps, :string
    end
  end    
end
