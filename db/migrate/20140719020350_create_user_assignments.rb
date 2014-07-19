class CreateUserAssignments < ActiveRecord::Migration
  def change
    create_table :user_assignments do |t|
      t.references :user, index: true
      t.references :assignment, index: true

      t.timestamps
    end
  end
end
