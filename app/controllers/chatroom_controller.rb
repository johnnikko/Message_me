class ChatroomController < ApplicationController

  def index
    @messages = Message.all
  end

  def show

  end

  private
  def message_params
    params.require(:message).permit(:body,:user_id)
  end

end