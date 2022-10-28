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
      # TODO: Implement this method by checking the band's position in the FAVE_BANDS array
      # what happens if the band is not in the array?
    end

    def review
      # TODO: Randomly generate a review for the band (String)
      # Use the bands name in the review, and make sure to have at least 3 different reviews
      # Hint: Use the rand() method
    end
  end
end
