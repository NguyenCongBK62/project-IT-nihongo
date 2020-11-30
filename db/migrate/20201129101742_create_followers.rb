class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.references :follower, references: :users
      t.references :following, references: :users
      t.timestamps
      
    end
    
    add_index :followers, :follower
    add_index :followers, :following
    add_index :followers, [:follower, :following], unique: true
  end
end
