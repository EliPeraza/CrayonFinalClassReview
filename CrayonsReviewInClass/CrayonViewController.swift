//
//  ViewController.swift
//  CrayonsReviewInClass
//
//  Created by Elizabeth Peraza  on 12/3/18.
//  Copyright © 2018 Elizabeth Peraza . All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
  
  private var crayons = Crayon.allTheCrayons
  
  @IBOutlet weak var myTableView: UITableView!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    myTableView.dataSource = self
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let IndexPath = myTableView.indexPathForSelectedRow,
      let myDetailedCrayonViewController = segue.destination as? DetailedCrayonViewController else {fatalError("we don't have index path or detailed view")}
    
    let crayonToSegue = crayons[IndexPath.row]
    
    myDetailedCrayonViewController.crayon = crayonToSegue
    
  }
  

}

extension CrayonViewController: UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return crayons.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = myTableView.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath)
    
    let currentCrayon = crayons[indexPath.row]
    
    cell.textLabel?.text = currentCrayon.name
    cell.detailTextLabel?.text = currentCrayon.hex
    cell.backgroundColor = currentCrayon.color()
    
    return cell
  }

}

