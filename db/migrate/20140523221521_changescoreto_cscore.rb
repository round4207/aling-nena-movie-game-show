class ChangescoretoCscore < ActiveRecord::Migration
  def change
  		rename_column :scores, :score, :cscore
  end
end
