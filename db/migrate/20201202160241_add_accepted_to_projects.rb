class AddAcceptedToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :accepted, :boolean
  end
end
