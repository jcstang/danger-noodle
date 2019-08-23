//
//  ViewController.swift
//  danger-noodle
//
//  Created by Jake Stanger on 8/23/19.
//  Copyright © 2019 Jake Stanger. All rights reserved.
//

import UIKit

let segueID: String = "daDetailPage"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CanRecieveDataDelegate {
    func dataReceived(data: String) {
        //TODO: what to do with data recieved
    }
    
    @IBOutlet weak var myTable: UITableView!
    var myPets = ["pet1", "pet2", "pet3", "pet4"]
    var selectedPet = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "daNib", for: indexPath) as! PetTableViewCell
        cell.petNameTxt.text = myPets[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row \(myPets[indexPath.row])")
        selectedPet = myPets[indexPath.row]
        performSegue(withIdentifier: segueID, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            let detailVC = segue.destination as! DetailViewController
            detailVC.detailViewControllerTitle = selectedPet
            detailVC.delegate = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view. comments
        myTable.delegate = self
        myTable.dataSource = self
        myTable.register(UINib(nibName: "PetTableViewCell", bundle: nil), forCellReuseIdentifier: "daNib")
       
        //configureTableView()
    }
    
    //    func configureTableView() {
    //        mainTableView.rowHeight = UITableView.automaticDimension
    //        mainTableView.estimatedRowHeight = 40.0
    //
    //    }
    
    
}



