class PagesController < ApplicationController
    before_action :set_page,except: [:index,:new,:create]

    def index
        @pages = Page.all
    end

    def show
        # set_page
    end

    def new
        @page = Page.new
    end

    def create                                                                                                                                                                                                                                                                                                                                     
        @page = Page.new(page_params)
        @page.save
        redirect_to pages_path
    end

    def edit_page
        # set_page 
    end

    def update
        # set_page
        @page.update(page_params)
        redirect_to @page
    end

    def destroy
        puts "hello this destroy zone"
        # set_page
        #destroying the current page 
        @page.destroy
        puts "dkjhxg"
        redirect_to pages_path
      end


    private

    def page_params
        params.require(:page).permit(:title,:body,:slug)
    end
    
    def set_page
        @page = Page.find(params[:id])
    end 
end
