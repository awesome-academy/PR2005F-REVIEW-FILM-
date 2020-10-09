class VideoUploader < CarrierWave::Uploader::Base
   include CarrierWave::Video // cho video proccessing
  include CarrierWave::Video::Thumbnailer // để tạo video thumbnail

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
   version :thumb do
    process thumbnail: [{format: "png", quality: 10, size: 512, logger: Rails.logger}]
    def full_filename for_file
      png_name for_file, version_name
    end
  end

  def png_name for_file, version_name
    %Q{#{version_name}_video_#{model.id}.png}
  end
end
