module TestParser #:nodoc:
  module VERSION #:nodoc:
    def self.major
      0
    end
    def self.minor
      5
    end
    def self.tiny
      0
    end
    def self.to_s
      [major,minor,tiny].join('.')
    end
  end
end
