require "sqlite3"

conn = SQLite3::Database.new "test.db"
conn.execute <<SQL
create table salutation (
  id INTEGER PRIMARY KEY,
  name VARCHAR(30));
SQL