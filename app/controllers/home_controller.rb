class HomeController < ApplicationController
 
  
  def index
    
  end
  
  def field_culture
     @bills = Bill.where(kind: "문화 체육")
  end
  
  def field_election
    @bills = Bill.where(kind: "선거 정치")
  end
  
  def field_environment
    @bills = Bill.where(kind: "환경 노동")
  end
  
  def field_nursing
    @bills = Bill.where(kind: "보건 복지")
  end
  
  def field_traffic
    @bills = Bill.where(kind: "국토 교통")
  end
  
  def field_women
    @bills = Bill.where(kind: "여성 가족")
  end
  

  def field
    @bills = Bill.all
  end

  def region
  end

  def profile
    @assems = Assem.all
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
    
    @view_post = Board.find(params[:post_id])
    
  end

  def update
    @view_post = Board.where(id: params["id"]).first
    @view_post.title = params["input_title"] 
    @view_post.editor = params["input_editor"]
    @view_post.content = params["input_content"]
    @view_post.save
      redirect_to "/show/" + @view_post.id.to_s   
  end
  
  def delete
    del_id = params[:post_id]
    del_post = Board.find(del_id)
    del_post.delete
   
    redirect_to '/board'
  end
  
  def edit
    @view_post = Board.where(id: params["id"]).first
  end
  
  def seadaemun
    
  end
  
  def seongbuk
  # @result = Array.new
  # @assems = Assem.where(precinct: "성북구갑")
  # @assems.each do |a|
  #   @result << a.where(a.bills.where(precinct: "성북구갑"))
  # end
  end
  
  def nowon
  
  end 
  
  def youngsangu
    @bills = Bill.where(precinct: "용산구갑") 
  end
  
  def donggakgu
    # @bills = Bill.where(assem.precinct: "동작구갑")
    
  end
end
