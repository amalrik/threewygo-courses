class VideoProcessor < ActiveStorage::Processor
  def process(file)
    # Use FFmpeg to transcode the video
    ffmpeg_command = "ffmpeg -i #{file.path} -c:v libx264 -crf 18 #{file.path}.mp4"
    system(ffmpeg_command)
  end
end
