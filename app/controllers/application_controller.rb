class ApplicationController < ActionController::Base

    #layout :layout_by_resource
    #private
    #def layout_by_resource
    #puts ">>>>>>>>>>>>>>>>> #{devise_controller?}"
    #puts ">>>>>>>>>>>>>>>>> #{resource_class}"
    #"application"
    #end

    layout :layout_by_resource

  protected

    def layout_by_resource
        if devise_controller? && resource_class == Admin
            "admin_devise"
        else
            "application"
        end
    end
end
