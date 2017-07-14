class PostsController < ApplicationController
	before_action :find_post, only:[:show, :edit, :update]


  def index
  	@posts=Post.all
  end


  def new 
  	@post=Post.new
  end

  def create
  	@post=Post.new(post_param)
  	if (@post.save)
  		redirect_to @post
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end
 

  def update
  	if @post.update(post_param)
  		redirect_to @post
  	else
  		render :edit
  	end
  end

  	def find_post
  		@post= Post.find(params[:id])
  	end

  private

  def post_param
  	params.require(:post).permit(:title, :body)
  end



end
