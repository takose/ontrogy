namespace :insert_data do
  desc "Build ingredients model"
  task ingredient: :environment do 
    Ingredient.insert_csv
  end
end

