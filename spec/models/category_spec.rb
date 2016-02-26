require 'spec_helper'

describe Category do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "saves itself" do
    cat_init = Category.new(name: "action")
    cat_init.save
    expect(cat_init).to eq(cat_init)
  end

  it "has valid video" do
    cat = Category.create(name: "action-comedy")
    k9_vid = Video.create(title: "K9", description: "Cop teams with K9 dog", category: "action-comedy")
    expect(k9_vid).to be_valid
  end

  it "has many videos" do
    cat = Category.create(name: "action-comedy")
    k9_vid = Video.create(title: "K9", description: "Cop teams with K9 dog", category: "action-comedy")
    heat_vid = Video.create(title: "The Heat", description: "Two female LEOs team up", category: "action-comedy")
    expect(action-comedy.videos).to include(k9_vid, heat_vid)
  end
end
