class Recipe < ApplicationRecord
  before_create :generate_grocery_list

  def generate_grocery_list
    self.grocery_list = [self.ingredient_1, self.ingredient_2,self.ingredient_3,self.ingredient_4,self.ingredient_5,self.ingredient_6,self.ingredient_7,self.ingredient_8,self.ingredient_9,self.ingredient_10].join("\n")
  end
end
