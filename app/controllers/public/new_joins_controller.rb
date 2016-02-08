class Public::NewJoinsController < PublicController
  def create
    set_join_email
    redirect_to new_join_path
  end

private

  def set_join_email
    session[:join_email] = params[:email]
  end
end