//
//  ViewController.swift
//  AgingPeople
//
//  Created by admin on 12/12/2021.
//

import UIKit

class ViewController: UIViewController {
 
    let names = ["Fadia" , "Faten" , "Rawya" , "Ruba" , "Manar"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        cell.textLabel?.text = self.names[indexPath.row]
        
        
    let age = Int.random(in: 5...95)
        cell.detailTextLabel?.text = "\(age)"
        return cell
    }
}
