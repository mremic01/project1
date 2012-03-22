class Bookmark < ActiveRecord::Base


       # belongs_to :user #no users yet
        validates :url, :presence => true, :length => { :minimum => 10 }
        validates :name, :presence => true, :length => { :maximum => 99 }

end
