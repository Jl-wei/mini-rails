require "roads/version"

module Roads
  class Error < StandardError; end
  
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'}, ["Hello from Ruby on Roads!"]]
    end
  end
end
