class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.references :assignment, index: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
