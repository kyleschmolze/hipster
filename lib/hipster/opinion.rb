module Hipster
  class Opinion
    attr_accessor :band

    FAVE_BANDS = [
      "The Beatles",
      "The Beach Boys",
      "Radiohead",
      "Stevie Wonder",
      "Os Mutantes",
      "Tom Waits",
      "The Kinks",
      "Outkast",
      "Hiatus Kaiyote",
      "Bob Dylan",
    ]

    def rank
      if !FAVE_BANDS.include?(band)
        return "They can't be that good cause I've never heard of them."
      end

      FAVE_BANDS.index(band) + 1
    end

    def review
      seed = rand(3)
      if seed == 0
        "#{band} are totally overrated."
      elsif seed == 1
        "#{band} are totally underrated."
      else
        "I liked #{band}'s earlier stuff but then they sold out."
      end
    end

    def self.unsolicited_review
      opinion = Opinion.new
      opinion.band = FAVE_BANDS.sample
      opinion.review
    end
  end
end
