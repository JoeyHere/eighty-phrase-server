class Api::V1::RoundsController < ApplicationController
    before_action :find_round, only: [:show, :update]

    #delete when done as not needed
    def index
        @rounds = Round.all
        render json: @rounds
    end

    def update
        @round.update(round_params)
        if @round.save
            render json: @round
        else
            render json: {error:"Round update failed"}, status: 400
        end        
    end

    def create
        @round = Round.create(round_params)
        Response.create([
           {user_id: 1, round_id: @round.id, content: @round.question.answer, kind: 'answer'},
           {user_id: 1, round_id: @round.id, content: @round.question.fake_answer, kind: 'fake'}])
        render json: @round
    end

    def show
        render json: @round
    end

private

    def round_params
        params.require(:round).permit(:room_id, :status)
    end

    def find_round
        @round = Round.find_by(id: params[:id])
        render json: {error:"No round found with id: #{params[:id]}"}, status: 404 unless @round
    end

end
