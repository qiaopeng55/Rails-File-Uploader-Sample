class FileInfosController < ApplicationController

  def create
    @folder = Folder.find(params[:folder_id])
    @file_info = @folder.file_infos.build(params[:file_info])

    if @file_info.save
      render :json => {:file_path => 'whatever we want to say'},
             :content_type => "text/html"
    else
      render :json => {:result => 'Error!'},
             :content_type => "text/html"
    end
  end

end