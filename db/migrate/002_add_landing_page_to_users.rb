class AddLandingPageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :landing_page, :string
  end
end
