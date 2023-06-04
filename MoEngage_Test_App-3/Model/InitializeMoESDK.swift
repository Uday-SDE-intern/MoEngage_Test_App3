//
//  InitializeMoESDK.swift
//  MoEngage_Test_App-3
//
//  Created by UdayKiran Naik on 03/06/23.
//

import Foundation
import UIKit
import MoEngageSDK

struct InitializeMoESDK{
    
    var appID: String?
    func initializeSDK()
    {
        var sdkConfig = MoEngageSDKConfig(withAppID:appID!)
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

