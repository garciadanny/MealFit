//
//  MealTableViewController.swift
//  MealFit
//
//  Created by Danny Garcia on 12/16/16.
//  Copyright © 2016 Danny Garcia. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
  
  //MARK: Properties
  
  var meals = [Meal]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
      
      loadSampleMeals()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }

    /*
      The as? MealTableViewCell expression attempts to downcast the returned 
      object from the UITableViewCell class to your MealTableViewCell class.
      This returns an optional.
   
      If your storyboard is set up correctly, and the cellIdentifier matches 
      the identifier from your storyboard, then the downcast should never fail.
      If the downcast does fail, the fatalError() function prints an error message
      to the console and terminates the app.
    */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cellIdentifier = "MealTableViewCell"
      
      guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MealTableViewCell else {
         fatalError("The dequeued cell is not an instance of MealTableViewCell.")
      }
      
      // Fetches the appropriate meal for the data source layout. 
      //This code fetches the appropriate meal from the meals array.
      let meal = meals[indexPath.row]

        // Configure the cell...
      cell.mealNameLabel.text = "\(meal.name)"
      cell.caloriesData.text = "\(meal.calories)"
      cell.proteinData.text = "\(meal.protein)"
      cell.carbsData.text = "\(meal.carbs)"
      cell.fatData.text = "\(meal.fat)"
      cell.fiberData.text = "\(meal.fiber)"

      return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
  
  //MARK: Private Methods
  
  private func loadSampleMeals() {
    let meal1 = Meal(name: "Breakfast", calories: 300, protein: 30, carbs: 40, fat: 5, fiber: 5)
    let meal2 = Meal(name: "Meal 2", calories: 400, protein: 40, carbs: 60, fat: 10, fiber: 5)
    let meal3 = Meal(name: "Lunch", calories: 380, protein: 25, carbs: 20, fat: 2, fiber: 8)
    
    meals += [meal1, meal2, meal3]
  }

}
