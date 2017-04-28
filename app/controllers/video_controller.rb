class VideoController < ApplicationController

  def index
    @video = Video.new
    @videos = Video.all

  end

  def create
    @video = current_user.videos.build(video_params)

    if @video.save
      flash[:notice] = 'Successfully uploaded!'
    else
      flash[:danger] = 'Failed upload!'
    end
    redirect_to video_path
  end

  private
  def video_params
    params.require(:video).permit(:title, :video)
  end

end
