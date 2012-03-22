require 'spec_helper'

describe Bookmark do
 
  before(:each) do
    @attr = { :name => "examplesite", :url => "www.whatever.com" }
  end

  it "should create a new instance given valid attributes" do
    Bookmark.create!(@attr)
  end

  it "should require a name" do
    no_name_bookmark = Bookmark.new(@attr.merge(:name => ""))
    no_name_bookmark.should_not be_valid
  end
  it "should require a url" do
    no_url_bookmark = Bookmark.new(@attr.merge(:url => ""))
    no_url_bookmark.should_not be_valid
  end
  it "should require name under 100 characters" do
    long_name_bookmark = Bookmark.new(@attr.merge(:name => "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890"))
    long_name_bookmark.should_not be_valid
  end
  it "should require a url at least 10 characters" do
    short_url_bookmark = Bookmark.new(@attr.merge(:url => "www.q.com"))
    short_url_bookmark.should_not be_valid
  end


 
end
