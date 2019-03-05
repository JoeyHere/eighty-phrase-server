class Api::V1::UsersController < ApplicationController
    before_action :find_room, only: [:create]
    
    def create
        if @room.has_space?
            @user = User.create(name: params[:name])
            @user.name = @user.name+'1' if @room.has_name_already?
            @user.room = @room
            if @user.save
                render json: @user
            else
                render json: {error:"User could not be created"}, status: 400
            end
        else
            render json: {error:"The room is full, only 6 players are allowed per room"}, status: 400
        end
    end

    private


    def find_room
        @room = Room.find_by(code: params[:code])
        render json: {error:"Room with Code: #{params[:code]} not found"}, status: 404 unless @room
    end
end
