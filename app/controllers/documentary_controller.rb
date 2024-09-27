class DocumentaryController < ApplicationController
  def index
    @documentary_all = Documentaryfilm.all
    end
    
    def new
      @documentary = Documentaryfilm.new
    end
  
      
        def create
          @documentary = Documentaryfilm.new(documental_params)
          if @documentary.save
          redirect_to documentary_index_path
          else
          render :new
          end
        end
      
    
      
      private
       def documental_params
       params.require(:documentaryfilm).permit(:name, :synopsis, :director)
      end
    end