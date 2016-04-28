class GamesController < ApplicationController
  before_filter :set_category

 def index
   @games = @category.games

   respond_to do |format|
       format.html
       format.json { render json: { category: @category, games: @games } }
     end
 end

 def show
   @category = Category.find(params[:category_id])
   @games = @category.games.find(params[:id])
 end


 def set_category
   @category = Category.find(params[:category_id])
 end
end
