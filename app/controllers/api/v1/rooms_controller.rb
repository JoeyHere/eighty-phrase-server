class Api::V1::RoomsController < ApplicationController
    before_action :find_room, only: [:show, :edit, :update]

    #return all rooms (used for testing only)
    def index
        @rooms = Room.all
        render json: @rooms
    end
    
    def show
        render json: @room
    end

    def update
        @room.update(room_params)
        if @room.save
            render json: @room
        else
            render json: {error:"Room update failed"}, status: 400
        end        
    end

    def create
        @room = Room.create
        render json: @room
    end

    private

    def room_params
        params.require(:room).permit(:id, :code, :status)
    end

    def find_room
        @room = Room.find_by(id: params[:id])
        render json: {error:"Room with id #{params[:id]} not found"}, status: 404 unless @room
    end

end
