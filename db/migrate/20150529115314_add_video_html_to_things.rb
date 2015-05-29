class AddVideoHtmlToThings < ActiveRecord::Migration
  def change
    add_column :things, :video_html, :string
  end
end
