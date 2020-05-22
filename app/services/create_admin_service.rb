class CreateAdminService
  def call
    User.find_or_create_by!(email: Rails.application.secrets.admin_email1) do |user|
        user.password = Rails.application.secrets.admin_password
        user.password_confirmation = Rails.application.secrets.admin_password
        user.role = 'admin'
    User.find_or_create_by!(email: Rails.application.secrets.admin_email2) do |user|
        user.password = Rails.application.secrets.admin_password
        user.password_confirmation = Rails.application.secrets.admin_password
        user.admin!
      end
      end
  end
end
