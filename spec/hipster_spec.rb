require 'spec_helper'
require 'hipster'

describe Hipster::Opinion do
  it "ranks The Beatles number 1" do
    expect(Hipster::Opinion.rank("The Beatles")).to eq 1
  end

  it "returns a string when given a band that isn't in the top 10" do
    expect(Hipster::Opinion.rank("The Smiths")).to be_a_kind_of(String)
  end
end
