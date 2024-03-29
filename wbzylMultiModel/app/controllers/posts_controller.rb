class PostsController < ApplicationController
  # GET /posts
  # GET /posts.xml
  def index
    @posts = Post.all
    respond_with(@posts)
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = Post.find(params[:id])
    respond_with(@post)
  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
    @post = Post.new
    respond_with(@post)
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.xml
  def create
    @post = Post.new(params[:post])
    @post.save
    respond_with(@post)
  end

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    respond_with(@post)
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_with(@post)
  end
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    respond_with(@post)
  end
end
