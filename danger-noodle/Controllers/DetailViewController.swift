//
//  DetailViewController.swift
//  danger-noodle
//
//  Created by Jake Stanger on 8/23/19.
//  Copyright © 2019 Jake Stanger. All rights reserved.
//

import UIKit

protocol CanRecieveDataDelegate {
    func dataReceived(data: String)
}

class DetailViewController: UIViewController {
    
    var delegate: CanRecieveDataDelegate?
    var detailViewControllerTitle = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = detailViewControllerTitle
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
