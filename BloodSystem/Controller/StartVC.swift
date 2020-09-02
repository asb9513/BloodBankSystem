//
//  StartVC.swift
//  BloodSystem
//
//  Created by Ahmed Saeed on 8/5/20.
//  Copyright © 2020 Ahmed Saeed. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    @IBOutlet weak var cardView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        cardView.layer.cornerRadius = 30
    }
    

    @IBAction func UserButton(_ sender: Any) {
        let Home = HomeVC.instance()
         Home.modalPresentationStyle = .fullScreen
         self.present(Home, animated: true, completion: nil)

    }
    
    @IBAction func Admin(_ sender: Any) {
        let Home = LoginHospitalVC.instance()
         Home.modalPresentationStyle = .fullScreen
         self.present(Home, animated: true, completion: nil)

    }
    

}
