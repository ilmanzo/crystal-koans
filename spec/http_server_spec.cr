require "spec_helper"

# write here a comment about this spec

require "http/server"
require "http/client"

# A server is initialized with a handler chain responsible for processing each incoming request.

describe Student do
  it "knows how to create an http server" do
    server = HTTP::Server.new do |context|
      context.response.content_type = "text/plain"
      context.response.print "Hello world!"
    end
    address = server.bind_unused_port # returns a struct Socket::IPAddress
    address.loopback?.should eq FILL_IN_THIS
    # starts the server in a new fiber for convenience
    # otherwise the listen call will block our tests
    spawn do
      server.listen
    end
    response = HTTP::Client.get address.to_s
    server.close
    response.status_code.should eq FILL_IN_THIS
    response.body.lines.first.should eq FILL_IN_THIS
  end
end
