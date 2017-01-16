Class RegistrationsController < Devise::RegistrationsController

private

def sign_up_params
  params.require(:user).permit(:email, :password, :confirmation_password, :admin)
end

if user.admin 
  user.add_role "admin"
  puts "Arquivo registrations_controller lido"
end
