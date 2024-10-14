class VideosController < ApplicationController
  before_action :set_course, only: %i[ index new ]
  before_action :set_video, only: %i[ show ]
  def index
    @videos = @course.videos
  end

  def show
  end

  def new
    @video = @course.videos.new
  end

  def create
    # debugger
    @video = Video.new(video_params)
    @course = Course.find(params[:video][:course_id])

    respond_to do |format|
      if @video.save
        format.html { redirect_to @course, notice: "video was successfully created." }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :video, :course_id)
  end

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_video
    @video = Video.find(params[:id])
  end
end
