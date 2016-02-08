class Join
  include ActiveModel::Model
  
  attr_accessor :email, :name
  
  def initialize(email)
    @email = email
  end
end