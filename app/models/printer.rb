class Printer
  #Port of: https://github.com/foosel/OctoPrint/blob/master/src/octoprint/printer/standard.py

  attr_accessor :status, :port, :baudrate, :profile
  
  def self.get_current_connection
    Printer.new
  end

  def initialize
    @status = 'Closed'
  end
end
