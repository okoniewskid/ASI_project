class ChangeCharacter2 < ActiveRecord::Migration[5.0]
  def change
    add_reference :characters, :race, index:true, foreign_key: true
  end
end
