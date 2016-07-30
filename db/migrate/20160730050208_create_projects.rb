class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :image

      t.timestamps null: false
    end
  end
end
