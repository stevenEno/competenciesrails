class RegistrationsController < Devise::RegistrationsController
    

    def sign_up_params
        params.require(:user).permit(:email, :password, :password_confirmation, :name, :user_type, :school, :role)
    end

    def create 
        build_resource(sign_up_params)
        resource.user_type = params[:user][:user_type]
        super
    end
  end