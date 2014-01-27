class UsersController < Devise::RegistrationsController
  #load_and_authorize_resource
  # layout 'application_user', only: [:show]
  
  # load_and_authorize_resource only: [:index, :show, :update, :edit]

  before_filter :require_login, only: [:index, :show, :update, :edit]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = current_user
  end

  def update
    @user = User.find(current_user.id)

    # https://github.com/plataformatec/devise/wiki/How-To%3a-Allow-users-to-edit-their-account-without-providing-a-password
    successfully_updated = if needs_password?(@user, params[:user])
      @user.update_with_password(params[:user])
    else
      params[:user].delete(:current_password)

     @user.update_without_password(params[:user])  

    end

    if successfully_updated
      redirect_to @user , notice: "Profile was successfully updated."
    else
      render action: 'edit', locals: {tab: params[:user][:tab]}
    end
  end

private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_user_session_url # halts request cycle
    end
  end

  def needs_password?(user, params)
    # user.email != params[:email] ||
      params[:password].present?
  end
  
end