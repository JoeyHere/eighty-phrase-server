class Api::V1::ResponsesController < ApplicationController

    def create
        @response = Response.create(response_params)
        render json: @response
    end

    private

    def response_params
        params.require(:response).permit(:user_id, :round_id, :content)
    end

end