//
//  AddMealTableViewController.swift
//  MealFit
//
//  Created by Danny Garcia on 3/25/17.
//  Copyright © 2017 Danny Garcia. All rights reserved.
//

import UIKit

class AddMealTableViewController: UITableViewController, UISearchBarDelegate {
  
  @IBOutlet weak var searchBar: UISearchBar!
  var items = [Meal]()
  var searchResults = [Meal]()
  var foodItemData = [
    Meal(name: "Turkey", calories: 200, protein: 30, carbs: 40, fat: 5, fiber: 5),
    Meal(name: "Sweet Potato", calories: 200, protein: 30, carbs: 40, fat: 5, fiber: 5)
  ]
  

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
      
      // hide search keyboard when user taps outside of keyboard
      let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddMealTableViewController.dismissKeyboard))
      tap.cancelsTouchesInView = false
      view.addGestureRecognizer(tap)
      
      loadSampleMeals()
      searchResults = foodItemData
      searchBar.delegate = self
    }
  
    func dismissKeyboard() {
      view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
      if searchBar.text != "" {
        return searchResults.count
      } else {
        return items.count
      }
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cellIdentifier = "MealTableViewCell"
      
      guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MealTableViewCell else {
        fatalError("The dequeued cell is not an instance of MealTableViewCell.")
      }
      
      var item: Meal
      
      if searchBar.text != "" {
        item = searchResults[indexPath.row]
      } else {
        item = items[indexPath.row]
      }
      
      // Fetches the appropriate meal for the data source layout.
      //This code fetches the appropriate meal from the meals array.
      
      // Configure the cell...
      cell.mealNameLabel.text = "\(item.name)"
      cell.caloriesData.text = "\(item.calories)"
      cell.proteinData.text = "\(item.protein)"
      cell.carbsData.text = "\(item.carbs)"
      cell.fatData.text = "\(item.fat)"
      cell.fiberData.text = "\(item.fiber)"
      
      return cell
    }
  
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
      searchResults = searchText.isEmpty ? foodItemData : foodItemData.filter { (item: Meal) -> Bool in
        // If dataItem matches the searchText, return true to include it
        return item.name.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
      }
      
      tableView.reloadData()
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

  @IBAction func cancelButton(_ sender: UIBarButtonItem) {
    dismiss(animated: true, completion: nil)
  }
  
  private func loadSampleMeals() {
    let item1 = Meal(name: "Chicken", calories: 300, protein: 30, carbs: 40, fat: 5, fiber: 5)

    items += [item1]
  }
}
