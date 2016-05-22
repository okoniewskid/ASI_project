json.array!(@characters) do |character|
  json.extract! character, :id, :name, :age, :sex, :eyecolor, :haircolor, :birthsign, :placeofbirth, :specialmarks, :weight, :height, :experience, :ww, :us, :k, :odp, :zr, :intelligence, :sw, :ogd, :a, :hp, :s, :wt, :sz, :mag, :po, :pp
  json.url character_url(character, format: :json)
end
