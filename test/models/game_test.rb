require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save game without title" do
    game = Game.new
    assert !game.save
  end
end
