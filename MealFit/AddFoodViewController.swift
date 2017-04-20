//
//  AddFoodViewController.swift
//  MealFit
//
//  Created by Danny Garcia on 3/27/17.
//  Copyright © 2017 Danny Garcia. All rights reserved.
//

import UIKit

class AddFoodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func cancelButton(_ sender: UIBarButtonItem) {
    navigationController?.popViewController(animated: true)
  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
