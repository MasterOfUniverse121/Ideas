class IdeasController < ApplicationController
  def show
    @idea = Idea.find_by(id: params['id'])
end
  
def new
    
end
  
def edit
  @idea = Idea.find_by(id: params['id'])
end
  
def create
  @idea = Idea.new
  @idea.description=params['description']
  @idea.save
  redirect_to "/ideas/#{@idea.id}"
end
    
def update
  @idea = Idea.find_by(id: params['id'])
  @idea.description=params['description']
  @idea.save
  redirect_to "/ideas/#{@idea.id}"
end
  
def destroy
  @idea = Idea.find_by(id: params['id'])
  @idea.destroy
  redirect_to "/ideas"
end
  
def index
  @idea = Idea.all
end
end