class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :eyecolor
      t.string :haircolor
      t.string :birthsign
      t.string :placeofbirth
      t.string :specialmarks
      t.integer :weight
      t.decimal :height
      t.integer :experience
      t.integer :ww
      t.integer :us
      t.integer :k
      t.integer :odp
      t.integer :zr
      t.integer :integer
      t.integer :sw
      t.integer :ogd
      t.integer :a
      t.integer :hp
      t.integer :s
      t.integer :wt
      t.integer :sz
      t.integer :mag
      t.integer :po
      t.integer :pp

      t.timestamps
    end
  end
end
