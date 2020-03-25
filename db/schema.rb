
ActiveRecord::Schema.define(version: 2020_03_24_083843) do

  enable_extension "plpgsql"

  create_table "mutters", force: :cascade do |t|
    t.text "content"
  end

end
