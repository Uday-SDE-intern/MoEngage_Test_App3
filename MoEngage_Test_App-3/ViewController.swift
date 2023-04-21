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
        initializeSDK()
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
    
    func initializeSDK()
    {
        var sdkConfig = MoEngageSDKConfig(withAppID: "DAO6UGZ73D9RTK8B5W96TPYN")
        sdkConfig.moeDataCenter = .data_center_01
        sdkConfig.enableLogs = true
              // Separate initialization methods for Dev and Prod initializations
              #if DEBUG
                  MoEngage.sharedInstance.initializeDefaultTestInstance(sdkConfig, sdkState: .enabled)
              #else
                  MoEngage.sharedInstance.initializeDefaultLiveInstance(sdkConfig, sdkState: .enabled)
              #endif
    }
    
}

