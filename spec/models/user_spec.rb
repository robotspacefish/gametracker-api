require 'rails_helper'

describe User do
  it 'can be created' do
    expect(@user).to be_valid
  end

  it 'can add a game instance to games collection' do
    @user.add_game_by_instance(@loz)

    expect(@user.games.count).to eq(1)
  end

  it 'has an encrypted password' do
    expect(@user.authenticate('1234')).to eq(@user)
    expect(@user.authenticate('12345')).to eq(false)
  end

  it 'can be destroyed' do
    username = @user.username
    @user.destroy

    expect(User.count).to eq(0)
  end

  it 'can be found by username and destroyed' do
    user = User.find_by_username(@user.username)
    expect(User.find_by_username(@user.username)).to eq(@user)

    user.destroy
    expect(User.find_by_username(@user.username)).to eq(nil)
  end

  it 'can destroy all dependencies' do
    @user.games << @loz
    expect(OwnedGame.count).to eq(1)
    @user.destroy
    expect(OwnedGame.count).to eq(0)
  end

  it 'can add a platform to an owned game' do
    @user.add_game_by_instance(@loz)
    owned_game = @user.add_owned_platform_to_game_by_title(@loz.title, @nsw)
    puts owned_game.consoles.first
    expect(owned_game.consoles.first.name).to eq(@nsw)
  end
end
