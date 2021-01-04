require 'test_helper'

class SpellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spell = spells(:one)
  end

  test "should get index" do
    get spells_url, as: :json
    assert_response :success
  end

  test "should create spell" do
    assert_difference('Spell.count') do
      post spells_url, params: { spell: { damage_type: @spell.damage_type, description: @spell.description, title: @spell.title } }, as: :json
    end

    assert_response 201
  end

  test "should show spell" do
    get spell_url(@spell), as: :json
    assert_response :success
  end

  test "should update spell" do
    patch spell_url(@spell), params: { spell: { damage_type: @spell.damage_type, description: @spell.description, title: @spell.title } }, as: :json
    assert_response 200
  end

  test "should destroy spell" do
    assert_difference('Spell.count', -1) do
      delete spell_url(@spell), as: :json
    end

    assert_response 204
  end
end
