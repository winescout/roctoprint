PrinterSocket =
  properties:
    printers: Array

  ready:->
    self = @
    App.cable.subscriptions.create "PrinterChannel",
      connected: ->
        console.log 'connected'

      disconnected: ->
        console.log 'Printer Channel Disconnected'

      received: (data) ->
        if data.action == 'list'
          console.log 'data received', data
          self.set('printers', data.printers)

@PrinterSocket = PrinterSocket
