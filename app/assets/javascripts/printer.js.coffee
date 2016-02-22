class Printer
  @list: []

  constructor: (usbConnection)->
    console.log "connection", usbConnection

@Printer = Printer

