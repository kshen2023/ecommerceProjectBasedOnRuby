ActiveAdmin.register StaticPage do
  menu priority: 3, label: 'Static Pages'
  permit_params :title, :content
  form do |f|
    f.inputs do
      f.input :title, as: :select, collection: ['About', 'Contact']
      f.input :content
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :title
    actions
  end

  show do
    attributes_table do
      row :title
      row :content
    end
  end
end
