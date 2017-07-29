require 'csv'
class Synonym < ApplicationRecord
  belongs_to :ingredient
  def self.insert_data
    destroy_all
    file = "lib/data/synonym.tsv"
    csvDatas = CSV.read(file, col_sep: "\t", headers: false)
    csvDatas.each do  |row|
      name = row[1].split('_')[0]
      ingredient_id = Ingredient.find_by(name: name).id
      word = row[2]
      if _ != '動作' && _ != '調理器具'
        Synonym.create(word: word, ingredient_id: ingredient_id)
      end
    end
  end
end
