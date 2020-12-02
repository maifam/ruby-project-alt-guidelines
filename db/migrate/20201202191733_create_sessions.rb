class CreateSessions < ActiveRecord::Migration[5.2]

  def change
    create_table :sessions do |t|
      t.integer :user_id
      t.integer :program_id
      t.integer :duration
    end 
  end
  
end
