class Api::V1::UsersController < ApplicationController
    before_action :find_room_by_code, only: [:create]
    before_action :find_user, only: [:destroy, :update]
    
    # ensure a room has space, it is open and if a player with the
    # same name is in the room append '1' to users name
    def create
        if @room.has_space? && @room.status == 'open'
            @user = User.create(name: params[:name])
            @user.name = @user.name+'1' if @room.has_name_already?(@user)
            @user.room = @room
            if @user.save
                render json: @user
            else
                render json: {error:"User could not be created"}, status: 400
            end
        else
            render json: {error:"The room is full, only 6 players are allowed per room"}, status: 400 if !@room.has_space?
            render json: {error:"This room is not open and cannot be joined"}, status: 400 if @room.status != 'open'
        end
    end
    
    def update
       @user.update(user_params)
       render json: @user
   end

    def update
        @user.update(user_params)
        render json: @user
    end

    def destroy
        User.destroy(@user.id)
        render json: {success: "User with id #{@user.id} deleted"}, status: 200 if !User.find_by(id: @user.id)
    end

    private

    def user_params
       params.require(:user).permit(:id, :name, :score)
    end

    def find_user
        @user = User.find_by(id: params[:id])
        render json: {error:"User with ID: #{params[:id]} not found"}, status: 404 unless @user
    end

    def find_room_by_code
        @room = Room.find_by(code: params[:code])
        render json: {error:"Room with Code: #{params[:code]} not found"}, status: 404 unless @room
    end
end
