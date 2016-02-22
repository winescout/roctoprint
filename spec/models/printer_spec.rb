require 'rails_helper'

RSpec.describe Printer, :type => :model do
  describe "When no connection" do
    it "should return a closed connection" do
      connection = Printer.get_current_connection
      expect(connection.status).to eq("Closed")
      expect(connection.port).to be(nil)
      expect(connection.baudrate).to be(nil)
      expect(connection.profile).to be(nil)
    end
  end
end
