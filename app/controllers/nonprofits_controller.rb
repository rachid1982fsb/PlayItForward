class NonprofitsController < ApplicationController
    def index
        nonprofits = Nonprofit.all
        render json: NonprofitSerializer.new(nonprofits).to_serialized_json
    end
    def show 
        nonprofit = Nonprofit.find(params[:id])
        render json: NonprofitSerializer.new(nonprofit).to_serialized_json
    end
end
