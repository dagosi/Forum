class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @topic = Topic.find(params[:topic_id])
    @comments = @topic.comments
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.find(params[:id])
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.build
  end

  # GET /comments/1/edit
  def edit
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.build(params[:comment])

    if @comment.save
        redirect_to topic_comments_url(@topic), notice: 'Comment was successfully created.'
      else
        render action: "new"
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.find(params[:id])

    if @comment.update_attributes(params[:comment])
        redirect_to topic_comments_url(@topic), notice: 'Comment was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.find(params[:id])
    @comment.destroy

    redirect_to topic_comments_url(@topic), notice: 'The comment was successfully deleted.'
  end
end
