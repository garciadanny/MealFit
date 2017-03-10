//
//  Meal.swift
//  MealFit
//
//  Created by Danny Garcia on 12/16/16.
//  Copyright © 2016 Danny Garcia. All rights reserved.
//

import Foundation

class Meal {
  let name: String
  let calories: Int
  let protein: Int
  let carbs: Int
  let fat: Int
  let fiber: Int
  
  init(name: String, calories: Int, protein: Int, carbs: Int, fat: Int, fiber: Int) {
    self.name = name
    self.calories = calories
    self.protein = protein
    self.carbs = carbs
    self.fat = fat
    self.fiber = fiber
  }
}
