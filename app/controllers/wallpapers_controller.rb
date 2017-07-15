 class WallpapersController<ApplicationController
def home
end
 	def index
      @wallpapers=Wallpaper.all
 	end
def show
	@wallpaper=Wallpaper.find(params[:id])
end
 end