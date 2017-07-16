 class WallpapersController<ApplicationController

 	def index
      @wallpapers=Wallpaper.all
 	end
def show
	@wallpaper=Wallpaper.find(params[:id])
end
def new
	@wallpaper=Wallpaper.new
end
def create
@wallpaper=Wallpaper.new(wallpaper_params)
@wallpaper.user=User.find(1)
if @wallpaper.save
	flash[:success]="Your wallpaper was added succesfully"
	redirect_to wallpapers_path
	#do something
else
	render :new
end
end 
def edit
	@wallpaper=Wallpaper.find(params[:id])
	
end
def update
	@wallpaper=Wallpaper.find(params[:id])
	if @wallpaper.update(wallpaper_params)
		#do something
	flash[:success]="Your wallpaper was edited and updated!"
	redirect_to wallpaper_path(@wallpaper)
	else
		render :edit
	end
end
private 
  def wallpaper_params
   params.require(:wallpaper).permit(:name,:summary,:description) 
  end
	end