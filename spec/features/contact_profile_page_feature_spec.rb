require File.expand_path '../../spec_helper.rb', __FILE__

describe "Move to Contact profile page", :type => :feature do

  it "moves to profile" do
    visit 'index.rb'
    expect(page).to have_content('FAVORITE CONTACTS')
  end
end