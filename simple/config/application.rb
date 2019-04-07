require "roads"

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module Simple
  class Application < Roads::Application
  end
end