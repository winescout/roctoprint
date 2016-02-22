App.printer = App.cable.subscriptions.create "PrinterChannel",
  connected: ->
    console.log 'Printer Channel Connected', Printer.list

  disconnected: ->
    console.log 'Printer Channel Disconnected'

  received: (data) ->
    if data.action == 'list'
      Printer.list = data.printers
      console.log 'Printer.list', Printer.list
