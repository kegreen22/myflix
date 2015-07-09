require 'spec_helper'

describe Category do
  pending "add some examples to (or delete) #{__FILE__}"

  it "saves itself" do
  cat = Category.new(name: "action-comedy")
  cat.save
  expect(cat).to eq(cat)
  end
 
  it "has valid video" do
    cat = Category.create(name: "action-comedy")
  k9vid = Video.create(title: "K9", description: "Cop teams with K9 dog", category: "action-comedy")
   expect(k9vid).to be_valid
  end

  it "has many videos" do
  cat = Category.create(name: "action-comedy")
  k9vid = Video.create(title: "K9", description: "Cop teams with K9 dog", category: "action-comedy")
  heatvid = Video.create(title: "The Heat", description: "Two female LEOs team up", category: "action-comedy")
  expect(action-comedy.videos).to include(k9vid, heatvid)
  end
end
