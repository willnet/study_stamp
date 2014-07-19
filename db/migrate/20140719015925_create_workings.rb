class CreateWorkings < ActiveRecord::Migration
  def change
    create_table :workings do |t|
      t.references :user, index: true
      t.references :assignment, index: true

      t.timestamps
    end
  end
end
