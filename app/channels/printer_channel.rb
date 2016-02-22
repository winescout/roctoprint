# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class PrinterChannel < ApplicationCable::Channel
  def subscribed
    stream_from "printer"
    usb_context = UsbContext.new
    usb_context.devices
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
