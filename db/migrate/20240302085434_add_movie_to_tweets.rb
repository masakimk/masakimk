class AddMovieToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :movie, :string
  end
end
