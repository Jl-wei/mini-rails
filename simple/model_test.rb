require "sqlite3"
require "roads/model"

class Salutation < Roads::Model::SQLite; end
STDERR.puts Salutation.schema.inspect

# Create row
s = Salutation.create "name" => "Hello"
s["name"] = "Hi"
s.save!

s2 = Salutation.find s["id"]

puts s2["name"]