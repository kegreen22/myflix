class AddCategoryToVideos < ActiveRecord::Migration
  def change
    t.belongs_to :category, index:true
  end
end
