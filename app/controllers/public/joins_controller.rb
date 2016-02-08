class Public::JoinsController < PublicController
  before_action :check_email!
  
  def new
    @join = Join.new(session[:join_email])
  end
  
  def reset
    session.delete(:join_email)
    redirect_to root_path
  end

private
  
  def check_email!
    redirect_to root_path if session[:join_email].blank?
  end
end