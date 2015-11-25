class Telemetry
  dependency :clock

  def self.build
    new.tap do |instance|
      Clock::UTC.configure instance
    end
  end

  def self.configure(receiver)
    instance = build
    receiver.telemetry = instance
    instance
  end

  def sinks
    @sinks ||= []
  end

  def register(sink)
    sinks << sink
  end

  def record(name, data=nil)
    sinks.each do |s|
      s.record name, clock.iso8601, data
    end
  end
end
