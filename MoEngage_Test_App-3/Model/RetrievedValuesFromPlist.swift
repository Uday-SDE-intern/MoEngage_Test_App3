//
//  RetrievedValuesFromPlist.swift
//  MoEngage_Test_App-3
//
//  Created by UdayKiran Naik on 04/06/23.
//

import Foundation
import UIKit
struct RetrievedValuesFromPlist{
    
    var dictionaryOfRetrivedValues:[String:String?] = ["f_e":nil,"b_e":nil,"d_t_w_e":nil,"b_uid_r":nil,"le_s":nil,"a_s":nil,"dt_s_t":nil,"le_tkn":nil,"d_s_r_i":nil,"p_f_t":nil,"p_f_s":nil,"d_t":nil,"e_b_c":nil,"e_e_t":nil,"cid_ex":nil,"g_s":nil,"in_s":nil,"m_s_t":nil,"i_s":nil,"u_a_c_t":nil,"i_d_e":nil]
    
    mutating func retriveValues(dictionary: NSMutableDictionary){
        
        for keyOfTextField in Keys.keysArrayOfTextField {
            dictionaryOfRetrivedValues[keyOfTextField] = dictionary.value(forKey: keyOfTextField) as? String
        }
        
        for keyOfDropDown in Keys.keysArrayOfDropDownField {
            dictionaryOfRetrivedValues[keyOfDropDown] = dictionary.value(forKey: keyOfDropDown) as? String
        }
        
    }
    
}
