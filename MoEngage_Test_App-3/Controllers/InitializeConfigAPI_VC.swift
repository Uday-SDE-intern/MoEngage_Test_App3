//
//  ViewController.swift
//  MoEngage_Test_App-3
//
//  Created by UdayKiran Naik on 21/04/23.
//

import UIKit
import MoEngageSDK
class ViewController: UIViewController {
    
    @IBAction func initialize_Config_API(_ sender: Any) {
        
        let initalizeSDK = InitializeMoESDK(appID: AppID.appID)
        initalizeSDK.initializeSDK()
        let dtracking = self.storyboard?.instantiateViewController(withIdentifier: "Data_Tracking") as! Data_Tracking
        self.navigationController?.pushViewController(dtracking, animated: true)
    }
    
    @IBAction func config_API_settings(_ sender: Any) {
        let config_api_settings = self.storyboard?.instantiateViewController(withIdentifier: "Config_API_Settings") as! Config_API_Settings
        self.navigationController?.pushViewController(config_api_settings, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

