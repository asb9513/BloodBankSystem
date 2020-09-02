//
//  HomeHospitalVC.swift
//  BloodSystem
//
//  Created by Ahmed Saeed on 8/5/20.
//  Copyright © 2020 Ahmed Saeed. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class HomeHospitalVC: UIViewController {
    
     var hospitalUser:HospitalModel?
    
    static func instance () -> HomeHospitalVC {
        let storyboard = UIStoryboard.init(name: "Hospital", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "HomeHospitalVC") as! HomeHospitalVC
    }
    @IBOutlet weak var cardView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        cardView.layer.cornerRadius = 30
    }
    
    func getData(){
        let url = "https://salemsaber.com/websites/hospital/api/hospital/1"
        Alamofire.request(url, method: .get, encoding: JSONEncoding.default)
            .responseJSON { response in
                switch response.result{
                case .success(let json):
                    print(json)
                    DispatchQueue.main.async {
                        print("Alamofire json",json)
                        // Parse JSON data
                        self.hospitalUser = try! JSONDecoder().decode(HospitalModel.self, from: response.data!)
                        //print("jsonDict ",jsonDict?["name"] as? String)
                        //print("self.hospitalUser?.name ",self.hospitalUser?.name)
                    }
                case .failure(let error):
                    print("Alamofire error ",error)
                    
                }
        }
    }
/*
    @IBAction func Edit(_ sender: Any) {
        let HomeVC = EditVC.instance()
        HomeVC.modalPresentationStyle = .fullScreen
        self.present(HomeVC, animated: true, completion: nil)

        
    }
 */
    
    @IBAction func editTapped(_ sender: Any) {
         self.performSegue(withIdentifier: "gotoEdit", sender: nil)
    }
    
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoEdit" {
            if let vc = segue.destination as? EditVC {
                
                vc.hospitalUser = hospitalUser
            }
        }
    }
    
    @IBAction func Upload(_ sender: Any) {
        let HomeVC = UploadVC.instance()
            HomeVC.modalPresentationStyle = .fullScreen
            self.present(HomeVC, animated: true, completion: nil)
    }
    @IBAction func Test(_ sender: Any) {
        let HomeVC = TESTVC.instance()
               HomeVC.modalPresentationStyle = .fullScreen
               self.present(HomeVC, animated: true, completion: nil)
    }
    
    

}
