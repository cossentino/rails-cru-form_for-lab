module ApplicationHelper

    def strong_params(model, *attributes)
        params.require(model).permit(*attributes)
    end

    
end
