class Public::NewJoinsController < PublicController
  def create
    # session[:join_email] = params[email]
    redirect_to new_join_path
  end
end