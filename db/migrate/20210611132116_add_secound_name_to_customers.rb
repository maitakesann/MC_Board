class AddSecoundNameToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :secound_name, :string
  end
end
