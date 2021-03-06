//
//  TESTVC.swift
//  BloodSystem
//
//  Created by Ahmed Saeed on 8/5/20.
//  Copyright © 2020 Ahmed Saeed. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class TESTVC: BaseViewController {
    static func instance () -> TESTVC {
        let storyboard = UIStoryboard.init(name: "Hospital", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "TESTVC") as! TESTVC
    }
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var BloodType: UITextField!
    
    @IBOutlet weak var positive: UITextField!
    @IBOutlet weak var labelMassage: UILabel!
    var refArrists: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()

        refArrists = Database.database().reference().child("TEST")
    }
    

    func addArtist(){
        if positive.text == "Postivite" {
            showToast(message:"لن ليتم تسجيل في السيستم نظرا لان الدم غير صالح عزيزي ")
        }
        else {
    let key = refArrists.childByAutoId().key
        let artist = ["id": key,
                      "artistName":name.text! as String,
                      "artistGenre": BloodType.text as! String]
        refArrists.child(key!).setValue(artist)
        labelMassage.text = "TEST ADDED"
    
    }
    }
    @IBAction func testvuirs(_ sender: Any) {
          addArtist()
      }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
