class CreateReplies < ActiveRecord::Migration
  def self.up
    create_table :replies do |t|
      t.text :body
      t.references :message

      t.timestamps
    end
  end

  def self.down
    drop_table :replies
  end
end
