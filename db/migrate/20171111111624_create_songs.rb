class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :song_title
      t.string :duration

      t.timestamps
    end
  end
end
