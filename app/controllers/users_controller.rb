class UsersController < ApplicationController
    # before_action :authorized, only: [:auto_login]
    before_action :authorized, only: [:auto_login, :index]

  
    # REGISTER
    def create

      #it creates the user here, which is why it's making userExists true. so what does @user.valid? do?
      # @user = User.create(user_params)

      userExists = User.exists?(email: params[:email])

      # userExists = User.find_by(email: params[:email])
      # userA = User.find_by(email: params[:email])
      puts userExists 
      # puts userA
      # puts userA.email
      # puts User.all

      if userExists
        # render json: {userExists}
        render json: {error: "User already exists"}
      else
        @user = User.create(user_params)
        
        if @user.valid?
          token = encode_token({user_id: @user.id})
          render json: {user: @user, token: token}
        else
          render json: {error: "Invalid username or password"}
        end
      end
      # elsif @user.valid?
      #   @user = User.create(user_params)

      #   token = encode_token({user_id: @user.id})
      #   render json: {user: @user, token: token}
      # else
      #   render json: {error: "Invalid username or password"}
      # end
    end
  
    # LOGGING IN
    def login
      @user = User.find_by(email: params[:email])
  
      if @user && @user.authenticate(params[:password])
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token}
      else
        render json: {error: "Invalid username or password"}
      end
    end
  
    def index
      @users = User.all 
      puts "nic"
      puts @users 

      render json: @users
    end 

    def show 

    end
  
    def auto_login
      render json: @user
    end
  
    private
  
    def user_params
      params.permit(:email, :firstname, :lastname, :password)
      # params.permit(:email, :password, :age)
    end
  
  end