ActiveAdmin.register UrbanTree do
  permit_params :common_name_id, :electoral_ward_id, :image

  index do
    selectable_column
    id_column
    column :common_name do |urban_tree|
      urban_tree.common_name&.name
    end
    column :electoral_ward do |urban_tree|
      urban_tree.electoral_ward&.name
    end
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
      f.input :common_name, as: :select, collection: CommonName.all.map { |cn| [cn.name, cn.id] }
      f.input :electoral_ward, as: :select, collection: ElectoralWard.all.map { |ew| [ew.name, ew.id] }
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :common_name do |urban_tree|
        urban_tree.common_name&.name
      end
      row :electoral_ward do |urban_tree|
        urban_tree.electoral_ward&.name
      end
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
