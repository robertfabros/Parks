# app/admin/urban_trees.rb
ActiveAdmin.register UrbanTree do
  permit_params :common_name, :electoral_ward

  index do
    selectable_column
    id_column
    column :common_name
    column :electoral_ward
    actions
  end

  filter :common_name
  filter :electoral_ward

  form do |f|
    f.inputs do
      f.input :common_name
      f.input :electoral_ward
    end
    f.actions
  end
end
