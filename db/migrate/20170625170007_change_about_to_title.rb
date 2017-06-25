class ChangeAboutToTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :about, :title
  end
end
