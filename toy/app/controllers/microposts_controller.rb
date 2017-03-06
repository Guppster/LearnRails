class MicropostsController < ApplicationController
  def index
      @microposts = Micropost.all
  end

  def new
      @micropost = Micropost.new
  end

  def create
      @micropost = Micropost.new(post_params)

      if @micropost.save
          redirect_to microposts_path, notice: "Post has been created" and return
      end
  end

  def edit
      @micropost = Micropost.find(params[:id])
  end

  def update
      @micropost = Micropost.find(params[:id])

      if @micropost.update_attributes(post_params)
          redirect_to microposts_path, notice: "Post has been updated!" and return
      end
  end

  def destroy
      @micropost = Micropost.find(params[:id])
      @micropost.destroy

      redirect_to microposts_path, notice: "Post has been deleted!" and return
 
  end

  private def post_params
      params.require(:micropost).permit(:content, :user_id)
  end
end
