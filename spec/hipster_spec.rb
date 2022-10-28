require 'spec_helper'
require 'hipster'

describe Hipster::Opinion do
  describe "#rank" do
    let(:opinion) { Hipster::Opinion.new }

    it "ranks The Beatles number 1" do
      opinion.band = "The Beatles"
      expect(opinion.rank).to eq(1)
    end

    it "ranks The Beach Boys number 1" do
      opinion.band = "The Beach Boys"
      expect(opinion.rank).to eq(2)
    end

    it "returns a grumpy string when given a band that isn't in the top 10" do
      opinion.band = "The Smiths"
      expect(opinion.rank).to be_a_kind_of(String)
    end
  end

  describe "#review" do
    let(:opinion) { Hipster::Opinion.new }

    it "returns a string" do
      opinion.band = "The Kinks"
      expect(opinion.review).to be_a_kind_of(String)
    end

    it "returns a string that includes the band name" do
      opinion.band = "Radiohead"
      expect(opinion.review).to include("Radiohead")
    end

    context "when called 100 times" do
      it "generates at least 3 different answers" do
        # TODO: Implement this test which runs the #review method 100 times
        # then checks that at least 3 different answers were generated
      end
    end
  end

  describe ".unsolicited_review" do
    # TODO add a new CLASS METHOD called
    # the Hipster::Opinion.unsolicited_review
    # unsolicited_review should set up a new Opinion,
    # randomly assign a band from the FAVE_BANDS array,
    # and then return the review


    it "returns a string" do
      expect(Hipster::Opinion.unsolicited_review).to be_a_kind_of(String)
    end

    it "returns a string that includes a band name" do
      # TODO This test is super tricky!
      # You'll need to check that the unsolicited_review
      # includes a band name from the FAVE_BANDS array
    end
  end
end
