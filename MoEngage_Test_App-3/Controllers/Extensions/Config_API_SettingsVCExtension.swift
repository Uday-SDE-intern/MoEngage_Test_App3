//
//  Config_API_SettingsVCExtension.swift
//  MoEngage_Test_App-3
//
//  Created by UdayKiran Naik on 02/06/23.
//

import Foundation
import UIKit
import DropDown
extension Config_API_Settings {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func dropDownFunctionality(_ chooseLabel:UILabel,_ dropDown: DropDown, _ dropDownView: UIView, _ valArray: Array<String>) -> String
    {
        dropDown.anchorView = dropDownView
        dropDown.dataSource = valArray
        dropDown.bottomOffset = CGPoint(x: 0, y: (dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.topOffset = CGPoint(x: 0, y: -(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .bottom
        dropDown.selectionAction = { (index: Int,item: String) in
            chooseLabel.text = valArray[index]
            chooseLabel.textColor = .black
        }
        return chooseLabel.text ?? "NULL"
    }
    
    func userInputText(key:String)->String?{
        switch(key){
        case "f_e":
            return f_e.text
        case "b_e":
            return b_e.text
        case "d_t_w_e":
            return d_t_w_e.text
        case "b_uid_r":
            return b_uid_r.text
        case "le_s":
            return le_sChooseLabel.text
        case "a_s":
            return a_sChooseLabel.text
        case "dt_s_t":
            return dt_s_tChooseLabel.text
        case "le_tkn":
            return le_tknChooseLabel.text
        case "d_s_r_i":
            return d_s_r_iChooseLabel.text
        case "p_f_t":
            return p_f_tChooseLabel.text
        case "p_f_s":
            return p_f_sChooseLabel.text
        case "d_t":
            return d_tChooseLabel.text
        case "e_b_c":
            return e_b_cChooseLabel.text
        case "e_e_t":
            return e_e_tChooseLabel.text
        case "cid_ex":
            return cid_exChooseLabel.text
        case "g_s":
            return g_sChooseLabel.text
        case "in_s":
            return in_sChooseLabel.text
        case "m_s_t":
            return m_s_tChooseLabel.text
        case "i_s":
            return i_sChooseLabel.text
        case "u_a_c_t":
            return u_a_c_tChooseLabel.text
        case "i_d_e":
            return i_d_eChooseLabel.text
        default:
            return nil
        }
    }
    
    
}
