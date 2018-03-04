class PostsController < ApplicationController
   # Create
    def new
    # 사용자가 입력 할 화면
    # 자동으로 액션이름과 같은 화면을 사용자에게 보여줘라
    end    
   
    def create
    # 입력 받은 데이터를 실제 DB에 저잘 할 액션/
        @post = Post.new
        @post.title= params[:input_title]
        @post.content= params[:input_content]
        @post.save
        redirect_to "/posts/show/#{@post.id}"
    end    
   
    # Read
    def index
     # 모든 post를 보여주는 view
        @posts =Post.all
    end
    
    def show
    # 한 개의 post를 보여주는 view
        @post =Post.find(params[:post_id])
    end
   
    # Update
    def edit
     # 사용자가 입력 할 화면    
        @post =Post.find(params[:post_id])  
    end    
    def update
    # 입력 받은 데이터를 실제 DB에 저잘 할 액션/   
        @post =Post.find(params[:post_id])
       #수정할 코드
        @post.title= params[:input_title]
        @post.content= params[:input_content]
        @post.save
        redirect_to "/posts/show/#{@post.id}"
    end 
    # Destroy
    def destroy
    # 한 개의 post를 삭제하는 액션    
        @post =Post.find(params[:post_id])
        @post.destroy
        redirect_to '/'
    end    
end
