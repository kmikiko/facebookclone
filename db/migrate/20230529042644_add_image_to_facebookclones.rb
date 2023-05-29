class AddImageToFacebookclones < ActiveRecord::Migration[6.1]
  def change
    add_column :facebookclones, :image, :text
  end
end
