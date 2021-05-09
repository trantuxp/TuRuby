class SessionController < ApplicationController
    def index
        @session=  session[:user_id]
    end
    def create
        user = User.find_by(email:login_params[:email])
        if user
            if  user.matkhau == (login_params[:password])
                session[:user_id] = user.id
                redirect_to '/sign'
            else 
                flash[:login_errors] = ['invalid credentials']
                redirect_to '/signin'
            end
        else 
            flash[:login_errors] = ['invalid credentials']
        end
    end
    def logout
        session.delete(:user_id) 
        redirect_to '/sign'
    end 

    private 
    def login_params
        params.require(:login).permit(:email, :password)
    end
end
