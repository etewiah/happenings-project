class InfoController < ActionController::Base
  layout "application"
	# before_filter :set_view_path

 #  def set_view_path
 #    prepend_view_path "#{Rails.root}/app/views"
 #  end  

	def home
		# render :template => "info/home"
	end
	
  def about
  end

  def privacy
  end
end
