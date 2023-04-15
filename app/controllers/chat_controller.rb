# require 'faker'

class ChatController < ApplicationController
  include ActionController::Live
  def index
    if session.key?(:user_id)
      @user = User.find_by(id: session[:user_id])
      unless @user
        session.delete(:user_id)
        register_current_user()
      end
    else
      register_current_user()
    end
    render inline: '', layout: 'application' # Avoid having an empty view file.
  end

  def rooms
    data = Room.joins(:users)
              .where(users: {id: session[:user_id]})
              .order(updated_at: :desc)
    render json: data.as_json(include: { user: { only: [:name] } } )
  end

  def room
    room = Room.find(params[:id])
    render json: room.as_json(include: { chat_messages: { include: { user: { only: [:name] } } } })
  end

  def create_room
    room = Room.new(room_param)
    room.user_id = session[:user_id]
    room.save
    user = User.find(session[:user_id])
    room.users << user
    render json: room
  end

  def join_room
    user = User.find(session[:user_id])
    room = Room.find_by(name: params[:name])
    if Room
      room.touch(:updated_at)
      room.users << user
      render json: room
    else
      render json: { error: 'Room not found' }, status: :not_found
    end
  end

  private
    def room_param
      params.permit(:name)
    end

    def join_room_param
      params.permit(:name)
    end

    def register_current_user
      @user = User.new
      @user.name = Faker::Name.name
      @user.save
      session[:user_id] = @user.id
      cookies.encrypted[:user_id] = @user.id
    end
end
