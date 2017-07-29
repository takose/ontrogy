namespace :insert_data do
  desc "Insert ingredients data"
  task ingredient: :environment do 
    Ingredient.insert_data
  end

  desc "Insert synonym data"
  task synonym: :environment do 
    Synonym.insert_data
  end
end

