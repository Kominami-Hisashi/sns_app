class TopicsController < ApplicationController
  def new
    @topic = Topic.new
    render :new
  end


def create
  @topic = Topic.new(topic_params)
  
  if @topic.save
    redirect_to index_topic_path, notice: '登録しました'
  else
    render :new, status: :unprocessable_entity
  end
  
end

# 2-11
def index
    @title = params[:title]
    if @title.present?
      @topics = Topic.where('title LIKE ?', "%#{@title}%")
    else
      @topics = Topic.all
    end
    render :index
end


private
  def topic_params
    params.require(:topic).permit(:title)
  end

def edit
  render :edit
end

def update
  redirect_to'topics/edit'
end
  
  
  
end
