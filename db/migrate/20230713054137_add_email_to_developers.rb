class AddEmailToDevelopers < ActiveRecord::Migration[7.0]
  def change
    add_column :developers, :email, :string
  end
end
