//
//  DetailedCrayonViewController.swift
//  CrayonsReviewInClass
//
//  Created by Elizabeth Peraza  on 12/3/18.
//  Copyright © 2018 Elizabeth Peraza . All rights reserved.
//

import UIKit

class DetailedCrayonViewController: UIViewController {

  var crayon: Crayon!
  
    override func viewDidLoad() {
        super.viewDidLoad()

      view.backgroundColor = crayon.color()
      
    }
    

}
