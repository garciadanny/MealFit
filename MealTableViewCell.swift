//
//  MealTableViewCell.swift
//  MealFit
//
//  Created by Danny Garcia on 12/16/16.
//  Copyright © 2016 Danny Garcia. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
  
  //MARK: Properties
  
  @IBOutlet weak var mealNameLabel: UILabel!
  @IBOutlet weak var caloriesLabel: UILabel!
  @IBOutlet weak var proteinLabel: UILabel!
  @IBOutlet weak var carbsLabel: UILabel!
  @IBOutlet weak var fatLabel: UILabel!
  @IBOutlet weak var fiberLabel: UILabel!
  
  @IBOutlet weak var caloriesData: UILabel!
  @IBOutlet weak var proteinData: UILabel!
  @IBOutlet weak var carbsData: UILabel!
  @IBOutlet weak var fatData: UILabel!
  @IBOutlet weak var fiberData: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
