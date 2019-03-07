class Api::V1::VotesController < ApplicationController

    def create
        @vote = Vote.create(vote_params)
        render json: @vote
    end

    private

    def vote_params
        params.require(:response).permit(:user_id, :response_id)
    end

end