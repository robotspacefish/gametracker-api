require 'rails_helper'

describe User do
  it 'can be created' do
    expect(@user).to be_valid
  end

  it 'can add a game to games collection' do
    @user.games << @loz

    expect(@user.games.first.title).to eq("The Legend of Zelda: Breath of the Wild")
  end

  it 'has an encrypted password' do
    expect(@user.authenticate('1234')).to eq(@user)
    expect(@user.authenticate('12345')).to eq(false)
  end
end
