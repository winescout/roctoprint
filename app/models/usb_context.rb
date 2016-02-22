class UsbContext
  def initialize
    @context = LIBUSB::Context.new
    @context.on_hotplug_event do |device, event|
      puts "\n\n\n hotplug event"
      self.devices
      return :repeat
    end
  end

  def devices
    devices = @context.devices
    ActionCable.server.broadcast "printer", 
      action: 'list',
      printers: devices
    puts "streamed this: #{devices}"
  end

end
