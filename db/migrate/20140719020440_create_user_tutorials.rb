class CreateUserTutorials < ActiveRecord::Migration
  def change
    create_table :user_tutorials do |t|
      t.references :user, index: true
      t.references :assignment, index: true
      t.references :tutorial, index: true

      t.timestamps
    end
  end
end
