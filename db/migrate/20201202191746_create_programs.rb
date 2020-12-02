class CreatePrograms < ActiveRecord::Migration[5.2]

  def change
    create_table :programs do |t|
      t.string :name
      t.string :goal 
      t.string :difficulty
    end 
  end

end
