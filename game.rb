class Game
    attr_reader :multiplayer, :last_played_at

    def initialize(multiplayer = false, last_played_at = Time.new)
        @multiplayer = multiplayer
        @last_played_at = last_played_at
    end

    def can_be_archived?
        super && @last_played_at > 2.years.ago
    end
end

