class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  # 投稿データの保存
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user = current_user   # id 代入よりこちら推奨
    if @post_image.save
      redirect_to post_images_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @post_images = PostImage.all
  end

  def show
  end

  # 投稿データのストロングパラメータ
  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end
