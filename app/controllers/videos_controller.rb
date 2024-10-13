class VideosController < ApplicationController
  def index
    @videos = @course.videos
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

  # Use callbacks to share common setup or constraints between actions.
  def set_course
    @course = Course.find(params[:id])
  end
end
