class CreateSynonyms < ActiveRecord::Migration[5.1]
  def change
    create_table :synonyms do |t|
      t.string :word
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
