class PagesController < ApplicationController
    def index
        @pages = Page.all
    end

    def show
        @page = Page.find(params[:id])
        # render plain: @page.title  
    end

    #function to create new
    def new
        @page = Page.new
    end


    # function to create blog pages
    def create
        @page = Page.new(page_params)
        @page.save
        redirect_to @page
    end

    # function to edit the blog pages
    def edit
        @page = Page.find(params[:id])
    end

    def update
        @page = Page.find(params[:id])
        @page.update(page_params)
        redirect_to @page
    end

    #making the function private
    private

        def page_params
            params.require(:page).permit(:title,:body,:slug)
        end
end
