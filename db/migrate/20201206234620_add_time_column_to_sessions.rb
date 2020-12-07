class AddTimeColumnToSessions < ActiveRecord::Migration[5.2]
  
  def change
    add_column :sessions, :time, :datetime
  end
  
end
