class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string     :title
      t.attachment :video
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
