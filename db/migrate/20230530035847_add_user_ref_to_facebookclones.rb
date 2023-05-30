class AddUserRefToFacebookclones < ActiveRecord::Migration[6.1]
  def change
    add_reference :facebookclones, :user, null: false, foreign_key: true
  end
end
