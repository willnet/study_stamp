class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.references :user, index: true
      t.references :user_tutorial, index: true
      t.references :tutorial, index: true
      t.references :assignment, index: true

      t.timestamps
    end
  end
end
