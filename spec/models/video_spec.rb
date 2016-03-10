require 'spec_helper'

describe Video do

  it "saves itself" do
    black_rain = Video.new(title: "Black Rain", description: "American cop in Japan")
    black_rain.save
    expect(Video.first).to eq(black_rain)
  end

  it "belongs to category" do
    action_comedy = Category.create(name: "action-comedy")
    taxi = Video.create(title: "taxi", description: "Cop teams with taxi driver", category: action_comedy)
    expect(taxi.category).to eq(action_comedy)
  end

  it "is invalid without a title" do
  end
end