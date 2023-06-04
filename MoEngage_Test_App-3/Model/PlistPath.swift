//
//  PlistPath.swift
//  MoEngage_Test_App-3
//
//  Created by UdayKiran Naik on 02/06/23.
//

import Foundation
import UIKit
struct PlistPath {
    let forResource: String
    let ofType: String
    
    func plistPath()->String? {
        let path = Bundle.main.path(forResource: forResource, ofType: ofType)
        var plistPath:String?
        if let temp =  path{
            let directories = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) as Array
            let docPath = directories[0] as String
            let fileNameAppend = forResource+"."+ofType
            plistPath = docPath.appending(fileNameAppend)
            if let templistPath = plistPath {
                let filemanager = FileManager.default
                if(!filemanager.fileExists(atPath: templistPath))
                {
                    do{
                        try filemanager.copyItem(atPath: temp, toPath: templistPath)
                    }
                    catch{
                        print("Copy Failure")
                    }
                }
                else{
                    print("File Already Exists")
                }
            }
        }
        return plistPath
    }
}
