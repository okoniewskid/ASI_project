require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { a: @character.a, age: @character.age, birthsign: @character.birthsign, experience: @character.experience, eyecolor: @character.eyecolor, haircolor: @character.haircolor, height: @character.height, hp: @character.hp, int: @character.int, k: @character.k, mag: @character.mag, name: @character.name, odp: @character.odp, ogd: @character.ogd, placeofbirth: @character.placeofbirth, po: @character.po, pp: @character.pp, s: @character.s, sex: @character.sex, specialmarks: @character.specialmarks, sw: @character.sw, sz: @character.sz, us: @character.us, weight: @character.weight, wt: @character.wt, ww: @character.ww, zr: @character.zr } }
    end

    assert_redirected_to character_path(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { a: @character.a, age: @character.age, birthsign: @character.birthsign, experience: @character.experience, eyecolor: @character.eyecolor, haircolor: @character.haircolor, height: @character.height, hp: @character.hp, int: @character.int, k: @character.k, mag: @character.mag, name: @character.name, odp: @character.odp, ogd: @character.ogd, placeofbirth: @character.placeofbirth, po: @character.po, pp: @character.pp, s: @character.s, sex: @character.sex, specialmarks: @character.specialmarks, sw: @character.sw, sz: @character.sz, us: @character.us, weight: @character.weight, wt: @character.wt, ww: @character.ww, zr: @character.zr } }
    assert_redirected_to character_path(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_path
  end
end
