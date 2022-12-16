module SessionHelper
    def log_in user
        session[:user_id] = user.id
        session[:user_name] = user.name
    end

    def log_out
      session.delete :user_id
      session.delete :user_name
    end
end
