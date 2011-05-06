class MessagesController < ApplicationController
  # GET /messages
  # GET /messages.xml
  def index
    @messages = Message.all
    @message  = Message.new

    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @messages }
    end
  end

  # GET /messages/1
  # GET /messages/1.xml
  def show
    @message  = Message.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /messages/new
  # GET /messages/new.xml
  def new
    @message = Message.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @message }
    end
  end

  # GET /messages/1/edit
  def edit
    @message = Message.find(params[:id])
  end

  # POST /messages
  # POST /messages.xml
  def create
    @message = Message.new(params[:message])

    respond_to do |format|
      if @message.save
        format.html { redirect_to(messages_url) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.xml
  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.html { redirect_to(messages_url) }
    end
  end
end
