class AddDigestAndUniq < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :email, :uniq
    change_column :users, :password, :string
  end

  def reversible
    change_column :users, :email, :uniq
    change_column :users, :password, :string
  end

  def down
  end
end
