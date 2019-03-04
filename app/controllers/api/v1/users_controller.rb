class Api::V1::UsersController < ApplicationController
    before_action :find_room, only: [:create]
    
    def create
        @user = User.create(name: params[:name])
        @user.room = @room
        if @user.save
            render json: @user
        else
            render json: {error:"User could not be created"}, status: 400
        end
    end

    private

    def find_room
        @room = Room.find_by(code: params[:code])
        render json: {error:"Room with Code: #{params[:code]} not found"}, status: 400 unless @room
    end
end
