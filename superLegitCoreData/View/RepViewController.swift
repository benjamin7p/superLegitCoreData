//
//  RepViewController.swift
//  superLegitCoreData
//
//  Created by Benjamin Poulsen PRO on 1/14/19.
//  Copyright © 2019 Benjamin Poulsen PRO. All rights reserved.
//

import UIKit


class RepViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        updateView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    var representative: Representative? {
        return RepresentativeController.sharedController.representatives.first
    }
    
    func updateView() {
        if let rep  = representative {
            nameLabel.text = rep.name
            addressLabel.text = rep.address
            phoneNumberLabel.text = rep.phoneNumber
        } else {
            nameLabel.text = "search for rep"
            addressLabel.text = "search for rep"
            phoneNumberLabel.text = "search for rep"
        }
    }
}
