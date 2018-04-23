class UsersController < ApplicationController

  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]


  # variable that contains all the user and renders them
    def index
      # @user = User.all --> shows all users in one page
      @user = User.paginate(page: params[:page], :per_page => 5)
    end

    def show
      @user = User.find(params[:id])
    end

    def new
      @user = User.new
    end

    # Creating new user
    def create
      @user = User.new(user_params)
      # Handle a successful save.
      if @user.save
        log_in @user
        # If account is successful, then this shows
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @user
      else
        render 'new'
      end
    end

    # Editing User
    def edit
      @user = User.find(params[:id])
    end

    # Updating user
    def update
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        flash[:success] = "Profile updated"
        redirect_to @user
        # Handle a successful update.
      else
        render 'edit'
      end
    end

    private

      def user_params
        params.require(:user).permit(:name, :email, :password,
                                     :password_confirmation)
      end

      # Confirms a logged-in user.
      def logged_in_user
        unless logged_in?
          # method that puts the requested URL in the session variable
          store_location
          flash[:danger] = "Please log in."
          redirect_to login_url
      end
    end

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end