class CreateFacebookclones < ActiveRecord::Migration[6.1]
  def change
    create_table :facebookclones do |t|
      t.text :content

      t.timestamps
    end
  end
end
