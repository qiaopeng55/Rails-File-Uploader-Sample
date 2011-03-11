class Folder
  include Mongoid::Document

  field :name, :type => String

  embeds_many :file_infos, :inverse_of => :folder
end