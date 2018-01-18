class ShopsController < InheritedResources::Base

  private

    def shop_params
      params.require(:shop).permit()
    end
end

