class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  #class method
  def self.say_foo
    puts "Fooo!"
  end

  #instance method
  def log_foo bar
    @f.puts bar
  end
end

Logger.say_foo

logger = Logger.new
logger.log_foo 'Wow!'
