class EntriesController < ApplicationController
  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(entry_params)
    
    if @entry.save
      flash[:notice] = "Entry create"
      redirect_to @entry
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    
  end

  def index
    
  end
  
  private
  
  def entry_params
    params.require(:entry).permit(:body, :title)
  end
end
