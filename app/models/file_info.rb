class FileInfo
  include Mongoid::Document

  embedded_in :folder, :inverse_of => :file_infos
end