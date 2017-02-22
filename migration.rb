require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'development.sqlite3'
)

class ApplicationMigration < ActiveRecord::Migration
  def change
    create_table "first_app", force: true do |t|
      t.string  "hipster"
      t.string  "samuel"
      t.string  "standard"
    end
  end

end
