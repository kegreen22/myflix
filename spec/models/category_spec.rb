require 'spec_helper'

describe Category do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "saves itself" do
    action = Category.new(name: "action")
    action.save
    expect(Category.first).to eq(action)
  end

  it "has valid video" do
    action_comedy = Category.create(name: "action-comedy")
    k9_vid = Video.create(title: "K9", description: "Cop teams with K9 dog", category: action_comedy)
    expect(k9_vid).to be_valid
  end

  it "has many videos" do
    action_comedy = Category.create(name: "action-comedy")
    k9_vid = Video.create(title: "K9", description: "Cop teams with K9 dog", category: action_comedy)
    heat_vid = Video.create(title: "The Heat", description: "Two female LEOs team up", category: action_comedy)
    expect(action_comedy.videos).to eq([k9_vid, heat_vid])
  end
end