class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def new
      @user = User.new
  end

  def create
      @user = User.new(user_params)

      if @user.save
          redirect_to users_path, notice: "The user has been created!" and return
      end
      render 'new'
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])

      if @user.update_attributes(user_params)
          redirect_to users_path, notice: "#{name} has been updated!" and return
      end
      
      render 'edit'
  end

  def destory
      @user = User.find(params[:id])
      @user.destory

      redirect_to users_path, notice: "#{name} has been deleted!" and return
  end

end
