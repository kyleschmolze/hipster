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

    it "returns a string when given a band that isn't in the top 10" do
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
        opinion.band = "Tom Waits"
        reviews = []
        100.times do
          reviews << opinion.review
        end
        expect(reviews.uniq.count).to be > 2
      end
    end
  end

  describe ".unsolicited_review" do
    it "returns a string" do
      expect(Hipster::Opinion.unsolicited_review).to be_a_kind_of(String)
    end

    it "returns a string that includes a band name" do
      review = Hipster::Opinion.unsolicited_review
      matches = Hipster::Opinion::FAVE_BANDS.map do |band|
        review.include?(band)
      end
      expect(matches).to include(true)
    end
  end
end
