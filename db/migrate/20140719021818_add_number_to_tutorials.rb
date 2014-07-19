class AddNumberToTutorials < ActiveRecord::Migration
  def change
    add_column :tutorials, :number, :integer
  end
end
