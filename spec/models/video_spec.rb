require 'spec_helper'

describe Video do
  it "can save a record" do
  black_rain = Video.new(title: 'Black Rain', description: 'American cop in Japan', small_cover_url: "/tmp/Batman_Begins.jpg", category_id: '2')
  black_rain.valid?
  expect(black_rain).to be_valid
  end

  it "belongs to category" do
  cat = Category.create(name: "action-comedy")
  taxi = Video.create(title: "taxi", description: "Cop teams with taxi driver", category: "action-comedy")
  expect(taxi.category).to eq(action-comedy)
  end

  it "is invalid without a title" do
end 
end