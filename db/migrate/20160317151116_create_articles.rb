class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end

# At this point, you can use a rake command to run the migration:
# bin/rake db:migrate
