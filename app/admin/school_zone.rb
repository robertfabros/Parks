
ActiveAdmin.register SchoolZoneSignage do
  permit_params :school_id, :school_zone_id, :sign_type, :sign_location

  index do
    selectable_column
    id_column
    column :school
    column :sign_type
    actions
  end

  form do |f|
    f.inputs do
      f.input :school
      f.input :sign_type
    end
    f.actions
  end
end
