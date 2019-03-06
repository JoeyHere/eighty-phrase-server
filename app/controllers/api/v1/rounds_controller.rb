class Api::V1::RoundsController < ApplicationController
    before_action :find_round, only: [:show] #, :edit, :update]

    #delete when done as not needed
    def index
        @rounds = Round.all
        render json: @rounds
    end

    def create
        @round = Round.create(round_params)
        render json: @round
    end

    def show
        render json: @round
    end

private

    def round_params
        params.require(:round).permit(:room_id)
    end

    def find_round
        @round = Round.find_by(id: params[:id])
        render json: {error:"No round found with id: #{params[:id]}"}, status: 404 unless @round
    end

end
