module Hipster
  class Opinion
    def self.rank(band)
      case band
      when "The Beatles"
        1
      when "The Rolling Stones"
        2
      when "The Who"
        3
      when "The Kinks"
        4
      when "The Yardbirds"
        5
      when "The Animals"
        6
      when "The Jimi Hendrix Experience"
        7
      when "The Doors"
        8
      when "The Velvet Underground"
        9
      when "The Byrds"
        10
      else
        "I liked their earlier stuff but then they sold out."
      end
    end
  end
end


