class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
    @post.assets.new
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
    @post.assets.build 


  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    
      if @post.save
        redirect_to @post, notice: 'Post was successfully created.' 
      else
        render :new 
      end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
      if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.' 

      else
        render :edit 

      end
   end


  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    if @post.destroy
      redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:ruta, :historia, :image, :creador, :spot, :peligro, :año, assets_attributes: [:post_id, :image_file_name, :created_at, :updated_at, :image_content_type, :image_file_size, :image_updated_at])
    end
end
