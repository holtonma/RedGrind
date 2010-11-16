class ScreencastsController < ApplicationController
  
  layout 'application'
  
  def index
    @screencasts = Screencast.all
    @s3base = "http://s3.amazonaws.com/redgrind/screencasts/images"
  end
  
  def new
    @screencast = Screencast.new
  end
  
  def edit
    @screencast = Screencast.find(params[:id])
  end
  
  def create
    #raise params.to_yaml
    @screencast = Screencast.new(params[:screencast])
    if @screencast.save
      flash[:notice] = "Successfully saved screencast"
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
