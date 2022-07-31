class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit,:update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :validates_post, only: [:edit, :destroy]

  def index
    @post = Post.order('created_at DESC').limit(2) #最新の２つの投稿を載せる場合に使う
  end

  def new
    @post = Post.new
  end

  def create
    
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    
    
  end

  def edit
    
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to set_post
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def chart
    @post = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:image, :title, :aimble_fish, :time_zone_id, :trick, :comment).merge(user_id: current_user.id ) 
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def validates_post
    unless @post.user_id == current_user.id
      redirect_to root_path
    end
  end

end
