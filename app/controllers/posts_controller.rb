class PostsController < ApplicationController
  bedore_action :set_post, only: [:show, :edit]


  def index
    @post = Post.order('created_at ASC')      
    #order('created_at DESC').limit(2) 最新の２つの投稿を載せる場合に使う
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
  end

  private

  def post_params
    params.require(:post).permit(:image, :title, :aimble_fish, :time_zone_id, :trick, :comment).merge(user_id: current_user.id ) 
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
