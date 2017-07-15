 class WallpapersController<ApplicationController
 	def index
      @wallpapers=Wallpaper.all
 	end
def show
	@wallpaper=Wallpaper.find(params[:id])
end
 end