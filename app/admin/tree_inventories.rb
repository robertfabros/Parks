ActiveAdmin.register TreeInventory do
  permit_params :tree_specy_id, :tree_health_id, :tree_location_id, :scientific_name, :diameter, :condition, :latitude, :longitude

  index do
    selectable_column
    id_column
    column :tree_specy
    column :tree_health
    column :tree_location
    column :scientific_name
    column :diameter
    column :condition
    column :latitude
    column :longitude
    actions
  end

  filter :tree_specy
  filter :tree_health
  filter :tree_location
  filter :scientific_name
  filter :condition
  filter :latitude
  filter :longitude

  form do |f|
    f.inputs do
      f.input :tree_specy
      f.input :tree_health
      f.input :tree_location
      f.input :scientific_name
      f.input :diameter
      f.input :condition
      f.input :latitude
      f.input :longitude
    end
    f.actions
  end
end
