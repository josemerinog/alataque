class CreateProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :problems do |t|
      t.string :title
      t.text :description
      t.boolean :open

      t.timestamps
    end
  end
end
