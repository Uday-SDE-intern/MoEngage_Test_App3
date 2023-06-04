//
//  Data_Tracking.swift
//  MoEngage_Test_App-3
//
//  Created by UdayKiran Naik on 21/04/23.
//

import UIKit
import MoEngageAnalytics
class Data_Tracking: UIViewController {
    
    
    @IBAction func data_tracking(_ sender: Any) {
        MoEngageSDKAnalytics.sharedInstance.trackEvent("ACCOUNT_STATUS_ALLOWED")
        MoEngageSDKAnalytics.sharedInstance.flush()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
