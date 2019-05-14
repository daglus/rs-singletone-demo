class Loggeer
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  # let the method return an instance of our class
  @@x = Loggeer.new

  def self.instance
    return @@x
  end

  # instance method
  def log bar
    @f.puts bar
    @f.flush
  end

  #protection mechanism so that Loggeer.new can be written only inside the class
  private_class_method :new
end
