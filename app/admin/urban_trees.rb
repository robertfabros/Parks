# app/admin/urban_trees.rb
ActiveAdmin.register UrbanTree do
  permit_params :common_name, :electoral_ward, :image

  index do
    selectable_column
    id_column
    column :common_name
    column :electoral_ward
    column "Image" do |urban_tree|
      if urban_tree.image.attached?
        image_tag url_for(urban_tree.image), height: '50'
      else
        "No Image"
      end
    end
    actions
  end

  filter :common_name
  filter :electoral_ward

  form do |f|
    f.inputs do
      f.input :common_name
      f.input :electoral_ward
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do

      row :common_name

      row :electoral_ward

      row "Image" do |urban_tree|
        if urban_tree.image.attached?
          image_tag url_for(urban_tree.image), height: '200'
        else
          "No Image"
        end
      end
    end
  end


end
