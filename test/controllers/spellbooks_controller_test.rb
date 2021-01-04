require 'test_helper'

class SpellbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spellbook = spellbooks(:one)
  end

  test "should get index" do
    get spellbooks_url, as: :json
    assert_response :success
  end

  test "should create spellbook" do
    assert_difference('Spellbook.count') do
      post spellbooks_url, params: { spellbook: { spells_id: @spellbook.spells_id, title: @spellbook.title } }, as: :json
    end

    assert_response 201
  end

  test "should show spellbook" do
    get spellbook_url(@spellbook), as: :json
    assert_response :success
  end

  test "should update spellbook" do
    patch spellbook_url(@spellbook), params: { spellbook: { spells_id: @spellbook.spells_id, title: @spellbook.title } }, as: :json
    assert_response 200
  end

  test "should destroy spellbook" do
    assert_difference('Spellbook.count', -1) do
      delete spellbook_url(@spellbook), as: :json
    end

    assert_response 204
  end
end
