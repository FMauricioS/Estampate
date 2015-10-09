class RegistrationsController < Devise::RegistrationsController
	# Creamos strong params para que permita agregar los nuevos campos a la base de datos.
  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :last_name, :nickname, :address, :telephone, :personal_telephone)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :name, :last_name, :nickname, :address, :telephone, :personal_telephone)
  end
end