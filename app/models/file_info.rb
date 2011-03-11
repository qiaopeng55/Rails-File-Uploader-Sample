class FileInfo
  include Mongoid::Document

  mount_uploader :file, FileUploader

  embedded_in :folder, :inverse_of => :file_infos
end