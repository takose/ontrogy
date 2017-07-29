class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.includes(:synonyms)
  end

  def search
    if params[:query]
      @result = Synonym.find_by(word: params[:query]).ingredient
    end
  end
end
