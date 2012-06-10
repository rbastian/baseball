ActiveAdmin.register Player do
  filter :first_name
  filter :last_name

  index do
    column :id
    column :first_name
    column :last_name
    default_actions
  end
end
