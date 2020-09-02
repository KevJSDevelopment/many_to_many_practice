# put your Tourist model here
class Tourist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.tourist == self
        end
    end

    def landmarks
        self.trips.map do |trip|
            trip.landmark
        end
    end

    def visit_landmark(landmark)
        Trip.new(self, landmark)
    end

    def never_visited
        Landmark.all.reject do |landmark|
            self.landmarks.include?(landmark)
        end
    end

end