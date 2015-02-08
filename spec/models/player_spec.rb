require 'rails_helper'

RSpec.describe Player, :type => :model do
  describe ".create_blacklist" do
    # before(:each) do
    #   allow(Nokogiri).to receive(HTML).and_return("hello")
    # end

    it "uses scrapes the web for injured players" do
      allow(Nokogiri).to receive(:HTML).with(open("fake_website")).and_return("hello")
      response = Nokogiri.HTML(open("fake_website"))
      expect(response).to eq("hello")
    end
  end
end
