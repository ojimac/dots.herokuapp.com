class CreateRepos < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.string :name
      t.string :url
      t.string :forks
      t.string :owner
      t.string :homepage
      t.string :watchers
      t.text :description
      t.string :owner

      t.timestamps
    end
  end
end
