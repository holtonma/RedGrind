class ScreencastsController < ApplicationController
  
  layout 'application'
  
  def index
    @screencasts = Screencast.all
    @s3base = "http://s3.amazonaws.com/redgrind/screencasts/images"
  end
  
  def new
    @screencast = Screencast.new
    @screencast.movie_files.build
  end
  
  def edit
    @screencast = Screencast.find(params[:id])
  end
  
  def create
    #raise params[:screencast][:movie_files_attributes]["0"][:path].to_s
    mov_file = params[:screencast][:movie_files_attributes]["0"][:path]
    @screencast = Screencast.new(params[:screencast])
    
    if @screencast.save
      flash[:notice] = "Successfully saved screencast"
      #m4v_file = params[:upload][:m4vfile]
      @upload = Upload.new(:local_path => Upload.store_locally(mov_file))
      @upload.save!
      redirect_to @screencast
    else
      render :action => 'new'
    end
  end
  
  def update
    #rails params.to_yaml
    @screencast = Screencast.find(params[:id])
    if @screencast.update_attributes(params[:screencast])
      flash[:notice] = "Successfully updated screencast"
      redirect_to @screencast
    else
      render :action => 'edit'
    end
  end
  
  def show
  end

end
