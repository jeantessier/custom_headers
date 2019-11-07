# Custom Header

This sample application tries to pass a custom header to a controller as part
of a request spec.

## Running Tests

    $ bundle exec rspec

## Running the Server

    $ bin/rails server

Then, you can call the controller with a custom header with:

    $ http :3000/custom_headers X-MyHeader:"My special header value"
