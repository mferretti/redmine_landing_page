class AddLandingPageToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :landing_page, :string
  end
end
