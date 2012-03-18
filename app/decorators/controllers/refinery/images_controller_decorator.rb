::Refinery::Admin::ImagesController.class_eval do

  def ajax_create
    params[:image] = {:image => params[:image]}
    params[:image].each do  |image|
      @image = ::Refinery::Image.create(params[:image])
    end
    unless @image.errors.any?
      render :json => { :redirect_to => refinery.admin_images_path }
    else
      render :json => @image.errors, :status => 406
    end
  end

end