class HomeController < ApplicationController
  def index
    
  end

  def field
  end

  def region
  end

  def profile
  end

  def board
    @Board = Board.all
  end
  
  def contact
  end
  def new
    
  end
  
  def create
    @makeBoard = Board.new
    @makeBoard.title = params[:input_title]
    @makeBoard.editor = params[:input_editor]
    @makeBoard.content = params[:input_content]
    @makeBoard.save
  end
  
  def show
    @view_post = Post.find(params[:post_id])
  end
end
