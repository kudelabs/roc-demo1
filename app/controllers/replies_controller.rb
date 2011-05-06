class RepliesController < ApplicationController
  def create
    @message = Message.find(params[:message_id])
    rep = @message.replies.create(params[:reply])
    respond_to do |format|
      format.html {
        if rep.save
          err = nil
        else
          err = "Couldn't save reply, try again."
        end
        
        redirect_to(message_path(rep.message), :notice => err)
      }
    end
    
  end
end
