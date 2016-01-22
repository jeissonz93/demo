ActiveAdmin.register Participant do
permit_params :first_name, :last_name, :mobile_phone, :home_phone, :e_mail, :age, :about
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


filter :first_name
filter :last_name
filter :e_mail


end
