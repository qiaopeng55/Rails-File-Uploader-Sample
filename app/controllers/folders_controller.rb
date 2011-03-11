class FoldersController < ApplicationController
  def index
    @folders = Folder.all
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(params[:folder])
    if @folder.save
      redirect_to folders_path
    else
      render 'new'
    end
  end
end