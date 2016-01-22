ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
 
        panel "Newbies" do
          table_for Participant.order('created_at asc').limit(5) do
            column :first_name do |participant|
             link_to participant.first_name, admin_participant_path(participant)
            end
            column :last_name do |participant|
            #  mail_to participante.correo
            link_to participant.last_name, admin_participant_path(participant)
            end
            column :email do |participant|
            #  mail_to participante.correo
            link_to participant.e_mail, admin_participant_path(participant)
            end
          end
        end
      end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content

