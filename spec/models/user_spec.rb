require 'rails_helper'

describe User do
  before(:each) do
    @user = User.create!(username: "zeldafan1", email: 'zeldafan1@gmail.com', password: '1234', private_library: false, private_recently_played: false)

    @game = Game.create!(title: "The Legend of Zelda: Breath of the Wild")
    @game.consoles.create(name: "Nintendo Switch")
    @user.games << @game
  end

  it 'can be created' do
    expect(@user).to be_valid
  end

  it 'can add a game to games' do
    expect(@user.games.first.title).to eq("The Legend of Zelda: Breath of the Wild")
  end

  it 'has an encrypted password' do
    expect(@user.authenticate('1234')).to eq(@user)
    expect(@user.authenticate('12345')).to eq(false)
  end
end
