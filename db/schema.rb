ActiveRecord::Schema.define(version: 20140512014654) do

  enable_extension "plpgsql"

  create_table "songs", force: true do |t|
    t.string "title"
    t.string "url"
  end

end
