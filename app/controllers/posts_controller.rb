class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @challenge = @post.challenge
    @keyword = @challenge.keyword
  end

  def new
    @post = Post.new
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @post = Post.new(post_params)

    if @post.save
      # case @post.medium
      # when 'photo'
      #   redirect_to new_challenge_post_path(@challenge)
      # when 'poem'
      #   #blabla
      # when 'quote'
      #   #blabla
      # when 'song'
      #   #blabla
      # end
      redirect_to feed_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:medium, :picture_url, :poem, :text, :song_url)
  end

end
