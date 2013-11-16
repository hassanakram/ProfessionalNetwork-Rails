class HomeController < ApplicationController
  before_filter :authenticate_user! , :except => [:forgotpassword , :agreement , :whatislinkedin , :default]
  
  

  def index
    
  end

  def forgotpassword
  end

   def whatislinkedin
    end

  def secure
  end

  def agreement
  end

  def default
  end

  def update
    inviter = User.find_by_id(params[:id])
    if current_user.approve inviter
      redirect_to root_path, :notice => "Successfully confirmed friend!"
    else
      redirect_to root_path, :notice => "Sorry! Could not confirm friend!"
    end
  end

end
