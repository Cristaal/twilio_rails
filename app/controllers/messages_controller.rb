class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
    @message.to = params[:to]
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = "Message was sent sent."
      redirect_to messages_path
    else
      flash[:danger] = "There was a problem creating your post, please try again."
      render :new
    end
  end

  private
    def message_params
      params.require(:message).permit(:to, :from, :body, :address_id)
    end

end
