# ## Schema Information
#
# Table name: `ingredients`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`category`**    | `string`           |
# **`name`**        | `string`           |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#

require 'csv'
class Ingredient < ApplicationRecord
  has_many :synonyms
  validates_uniqueness_of :name

  def self.insert_data
    destroy_all
    files = ["lib/data/synonym.tsv", "lib/data/attribute.tsv", "lib/data/hprt.tsv"]
    files.each do |file|
      csvDatas = CSV.read(file, col_sep: "\t", headers: false)
      csvDatas.each do  |row|
        _, category = row[0].split('-')
        name = row[1].split('_')[0]
        if category != nil
          Ingredient.create(name: name, category: category)
        elsif _ != '動作' && _ != '調理器具'
          Ingredient.create(name: name, category: _)
        end
      end
    end
  end
end
