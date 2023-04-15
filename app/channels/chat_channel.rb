class ChatChannel < ApplicationCable::Channel
  def subscribed
    valid_room = Room.joins(:users).where(users: {id: params[:user_id]}).find(params[:room_id])
    if valid_room
      @user = User.find(params[:user_id])
      stream_from "chat_channel_#{params[:room_id]}"
    end
  end

  def unsubscribed
    ActionCable.server.broadcast "chat_channel_#{params[:room_id]}", data
  end

  def onMessage(data)
    chat_data = {
      user_id: @user.id,
      room_id: params[:room_id],
      status: true,
      message: data['data'],
      created_at: Time.now.strftime("%Y-%m-%d %H:%M:%S"),
      user_name: @user.name
    }
    
    ActionCable.server.broadcast("chat_channel_#{params[:room_id]}", chat_data)

    chat_data.delete(:user_name)
    ChatMessage.create(chat_data)
  end
end
