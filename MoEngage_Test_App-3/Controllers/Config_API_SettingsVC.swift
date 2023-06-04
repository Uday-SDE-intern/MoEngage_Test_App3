//
//  Config_API_Settings.swift
//  MoEngage_Test_App-3
//
//  Created by UdayKiran Naik on 21/04/23.
//

import UIKit
import Foundation
import DropDown
class Config_API_Settings: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var f_e: UITextField!
    
    @IBOutlet weak var b_e: UITextField!
    
    @IBOutlet weak var d_t_w_e: UITextField!
    
    @IBOutlet weak var b_uid_r: UITextField!
    
    var demoDict : NSMutableDictionary?
    var text: String?
    var jsonString:String = "{"
    var dictionary = [String:Any]()
    //le_s starts here
    @IBOutlet weak var le_sView: UIView!
    @IBAction func le_sButton(_ sender: Any) {
        (DropDownDetails.le_sDropDown[0] as! DropDown).show()
    }
    @IBOutlet weak var le_sChooseLabel: UILabel!
    //le_s ends here
    
    //a_s starts here
    @IBOutlet weak var a_sView: UIView!
    @IBAction func a_sButton(_ sender: Any) {
        (DropDownDetails.a_sDropDown[0] as! DropDown).show()
    }
    @IBOutlet weak var a_sChooseLabel: UILabel!
    //a_s ends here
    
    //dt_s_t starts here
    @IBOutlet weak var dt_s_tView: UIView!
    @IBAction func dt_s_tButton(_ sender: Any) {
        (DropDownDetails.dt_s_tDropDown[0] as! DropDown).show()
    }
    @IBOutlet weak var dt_s_tChooseLabel: UILabel!
    //dt_s_t ends here
    
    //le_tkn starts here
    @IBOutlet weak var le_tknView: UIView!
    @IBAction func le_tknButton(_ sender: Any) {
        (DropDownDetails.le_tknDropDown[0] as! DropDown).show()
    }
    @IBOutlet weak var le_tknChooseLabel: UILabel!
    //le_tkn ends here
    
    //d_s_r_i starts here
    @IBOutlet weak var d_s_r_iView: UIView!
    @IBAction func d_s_r_iButton(_ sender: Any) {
        (DropDownDetails.d_s_r_iDropDown[0] as! DropDown).show()
    }
    @IBOutlet weak var d_s_r_iChooseLabel: UILabel!
    //d_s_r_i ends here
    
    //p_f_t starts here
    @IBOutlet weak var p_f_tView: UIView!
    @IBAction func p_f_tButton(_ sender: Any) {
        (DropDownDetails.p_f_tDropDown[0] as! DropDown).show()
    }
    @IBOutlet weak var p_f_tChooseLabel: UILabel!
    //p_f_t ends here
    
    //p_f_s starts here
    @IBOutlet weak var p_f_sView: UIView!
    @IBAction func p_f_sButton(_ sender: Any) {
        (DropDownDetails.p_f_sDropDown[0] as! DropDown).show()
        
    }
    @IBOutlet weak var p_f_sChooseLabel: UILabel!
    //p_f_s ends here
    
    //d_t starts here
    @IBOutlet weak var d_tView: UIView!
    @IBAction func d_tButton(_ sender: Any) {
        (DropDownDetails.d_tDropDown[0] as! DropDown).show()
        
    }
    @IBOutlet weak var d_tChooseLabel: UILabel!
    //d_t ends here
    
    //e_b_c starts here
    @IBOutlet weak var e_b_cView: UIView!
    @IBAction func e_b_cButton(_ sender: Any) {
        (DropDownDetails.e_b_cDropDown[0] as! DropDown).show()
        
    }
    @IBOutlet weak var e_b_cChooseLabel: UILabel!
    //e_b_c ends here
    
    //e_e_t starts here
    @IBOutlet weak var e_e_tView: UIView!
    @IBAction func e_e_tButton(_ sender: Any) {
        (DropDownDetails.e_e_tDropDown[0] as! DropDown).show()
        
    }
    @IBOutlet weak var e_e_tChooseLabel: UILabel!
    //e_e_t ends here
    
    //cid_ex starts here
    @IBOutlet weak var cid_exView: UIView!
    @IBAction func cid_exButton(_ sender: Any) {
        (DropDownDetails.cid_exDropDown[0] as! DropDown).show()
        
    }
    @IBOutlet weak var cid_exChooseLabel: UILabel!
    //cid_ex ends here
    
    //g_s starts here
    @IBOutlet weak var g_sView: UIView!
    @IBAction func g_sButton(_ sender: Any) {
        (DropDownDetails.g_sDropDown[0] as! DropDown).show()
    }
    @IBOutlet weak var g_sChooseLabel: UILabel!
    //g_s ends here
    
    //in_s starts here
    @IBOutlet weak var in_sView: UIView!
    @IBAction func in_sButton(_ sender: Any) {
        (DropDownDetails.in_sDropDown[0] as! DropDown).show()
    }
    @IBOutlet weak var in_sChooseLabel: UILabel!
    //in_s ends here
    
    //m_s_t starts here
    @IBOutlet weak var m_s_tView: UIView!
    @IBAction func m_s_tButton(_ sender: Any) {
        (DropDownDetails.m_s_tDropDown[0] as! DropDown).show()
    }
    @IBOutlet weak var m_s_tChooseLabel: UILabel!
    //m_s_t ends here
    
    //i_s starts here
    @IBOutlet weak var i_sView: UIView!
    @IBAction func i_sButton(_ sender: Any) {
        (DropDownDetails.i_sDropDown[0] as! DropDown).show()
        
    }
    @IBOutlet weak var i_sChooseLabel: UILabel!
    //i_s ends here
    
    //u_a_c_t starts here
    @IBOutlet weak var u_a_c_tView: UIView!
    @IBAction func u_a_c_tButton(_ sender: Any) {
        (DropDownDetails.u_a_c_tDropDown[0] as! DropDown).show()
        
    }
    @IBOutlet weak var u_a_c_tChooseLabel: UILabel!
    //u_a_c_t ends here
    
    //i_d_e starts here
    @IBOutlet weak var i_d_eView: UIView!
    @IBAction func i_d_eButton(_ sender: Any) {
        (DropDownDetails.i_d_eDropDown[0] as! DropDown).show()
        
    }
    @IBOutlet weak var i_d_eChooseLabel: UILabel!
    //i_d_e ends here
    
    var plistPathObj = PlistPath(forResource: "Demo", ofType: "plist")
    var plistPath:String?{
        plistPathObj.plistPath()
    }
    
    @IBAction func Save(_ sender: Any) {
        //createPlist()
        if let plistPath_1 = plistPath{
            
            for keyOfTextField in Keys.keysArrayOfTextField {
                text = userInputText(key: keyOfTextField)
                if let temp = text {
                    var jsonStringFormationObject = JsonStringFormation(text: temp, jsonString: jsonString, key: keyOfTextField, dictionary: dictionary,demoDict: demoDict)
                    jsonString = jsonStringFormationObject.updatePlistDetailsAndJsonString_TextField()
                    dictionary = jsonStringFormationObject.updatedDictionary()
                    demoDict = jsonStringFormationObject.updatedDemoDict()
                }
            }
            
            for keyOfDropDown in Keys.keysArrayOfDropDownField {
                text = userInputText(key: keyOfDropDown)
                if let temp = text{
                    var jsonStringFormationObject = JsonStringFormation(text: temp, jsonString: jsonString, key: keyOfDropDown, dictionary: dictionary,demoDict: demoDict)
                    jsonString = jsonStringFormationObject.updatePlistDetailsAndJsonString_DropDown()
                    dictionary = jsonStringFormationObject.updatedDictionary()
                    demoDict = jsonStringFormationObject.updatedDemoDict()
                }
                
            }
            
            jsonString.removeLast()
            jsonString = jsonString + "}"
            print(jsonString)
            demoDict?.write(toFile: plistPath_1, atomically: true)
            print(dictionary)
            let dispatchQueue = DispatchQueue(label: "Queue Identification", qos: .background)
            dispatchQueue.async {
                self.setupPostMethod(self.dictionary)
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        f_e.delegate = self
        b_e.delegate = self
        d_t_w_e.delegate = self
        b_uid_r.delegate = self
        self.hideKeyboardTappedAround()
        if let plistPath_1 = plistPath{
            demoDict = NSMutableDictionary(contentsOfFile: plistPath_1)
            if let dict = demoDict{
                var retrivedValuesObj = RetrievedValuesFromPlist()
                retrivedValuesObj.retriveValues(dictionary: dict)
                
                if  let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfTextField[0]]{
                    f_e.text = retrievedData
                }
                if  let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfTextField[1]]{
                    b_e.text = retrievedData
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfTextField[2]]{
                    d_t_w_e.text = retrievedData
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfTextField[3]]{
                    b_uid_r.text = retrievedData
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[0]]{
                    le_sChooseLabel.text = retrievedData
                    le_sChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[1]]{
                    a_sChooseLabel.text = retrievedData
                    a_sChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[2]]{
                    dt_s_tChooseLabel.text = retrievedData
                    dt_s_tChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[3]]{
                    le_tknChooseLabel.text = retrievedData
                    le_tknChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[4]]{
                    d_s_r_iChooseLabel.text = retrievedData
                    d_s_r_iChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[5]]{
                    p_f_tChooseLabel.text = retrievedData
                    p_f_tChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[6]]{
                    p_f_sChooseLabel.text = retrievedData
                    p_f_sChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[7]]{
                    d_tChooseLabel.text = retrievedData
                    d_tChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[8]]{
                    e_b_cChooseLabel.text = retrievedData
                    e_b_cChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[9]]{
                    e_e_tChooseLabel.text = retrievedData
                    e_e_tChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[10]]{
                    cid_exChooseLabel.text = retrievedData
                    cid_exChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[11]]{
                    g_sChooseLabel.text = retrievedData
                    g_sChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[12]]{
                    in_sChooseLabel.text = retrievedData
                    in_sChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[13]]{
                    m_s_tChooseLabel.text = retrievedData
                    m_s_tChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[14]]{
                    i_sChooseLabel.text = retrievedData
                    i_sChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[15]]{
                    u_a_c_tChooseLabel.text = retrievedData
                    u_a_c_tChooseLabel.textColor = .black
                }
                if let retrievedData = retrivedValuesObj.dictionaryOfRetrivedValues[Keys.keysArrayOfDropDownField[16]]{
                    i_d_eChooseLabel.text = retrievedData
                    i_d_eChooseLabel.textColor = .black
                }
            }
        }
        self.le_sChooseLabel.text = self.dropDownFunctionality(le_sChooseLabel, DropDownDetails.le_sDropDown[0] as! DropDown, le_sView, DropDownDetails.le_sDropDown[1] as! [String])
        self.a_sChooseLabel.text = self.dropDownFunctionality(a_sChooseLabel, DropDownDetails.a_sDropDown[0] as! DropDown, a_sView,  DropDownDetails.a_sDropDown[1] as! [String])
        self.dt_s_tChooseLabel.text = self.dropDownFunctionality(dt_s_tChooseLabel, DropDownDetails.dt_s_tDropDown[0] as! DropDown, dt_s_tView, DropDownDetails.dt_s_tDropDown[1] as! [String])
        self.le_tknChooseLabel.text = self.dropDownFunctionality(le_tknChooseLabel, DropDownDetails.le_tknDropDown[0] as! DropDown, le_tknView, DropDownDetails.le_tknDropDown[1] as! [String])
        self.d_s_r_iChooseLabel.text = self.dropDownFunctionality(d_s_r_iChooseLabel, DropDownDetails.d_s_r_iDropDown[0] as! DropDown, d_s_r_iView, DropDownDetails.d_s_r_iDropDown[1] as! [String])
        self.p_f_tChooseLabel.text = self.dropDownFunctionality(p_f_tChooseLabel, DropDownDetails.p_f_tDropDown[0] as! DropDown, p_f_tView, DropDownDetails.p_f_tDropDown[1] as! [String])
        self.p_f_sChooseLabel.text = self.dropDownFunctionality(p_f_sChooseLabel, DropDownDetails.p_f_sDropDown[0] as! DropDown, p_f_sView,DropDownDetails.p_f_sDropDown[1] as! [String])
        self.d_tChooseLabel.text = self.dropDownFunctionality(d_tChooseLabel, DropDownDetails.d_tDropDown[0] as! DropDown, d_tView, DropDownDetails.d_tDropDown[1] as! [String])
        self.e_b_cChooseLabel.text = self.dropDownFunctionality(e_b_cChooseLabel, DropDownDetails.e_b_cDropDown[0] as! DropDown, e_b_cView, DropDownDetails.e_b_cDropDown[1] as! [String])
        self.e_e_tChooseLabel.text = self.dropDownFunctionality(e_e_tChooseLabel, DropDownDetails.e_e_tDropDown[0] as! DropDown, e_e_tView,DropDownDetails.e_e_tDropDown[1] as! [String])
        self.cid_exChooseLabel.text = self.dropDownFunctionality(cid_exChooseLabel, DropDownDetails.cid_exDropDown[0] as! DropDown, cid_exView,DropDownDetails.cid_exDropDown[1] as! [String])
        self.g_sChooseLabel.text = self.dropDownFunctionality(g_sChooseLabel, DropDownDetails.g_sDropDown[0] as! DropDown, g_sView, DropDownDetails.g_sDropDown[1] as! [String])
        self.in_sChooseLabel.text = self.dropDownFunctionality(in_sChooseLabel, DropDownDetails.in_sDropDown[0] as! DropDown, in_sView,DropDownDetails.in_sDropDown[1] as! [String])
        self.m_s_tChooseLabel.text = self.dropDownFunctionality(m_s_tChooseLabel, DropDownDetails.m_s_tDropDown[0] as! DropDown, m_s_tView,DropDownDetails.m_s_tDropDown[1] as! [String])
        self.i_sChooseLabel.text = self.dropDownFunctionality(i_sChooseLabel, DropDownDetails.i_sDropDown[0] as! DropDown, i_sView, DropDownDetails.i_sDropDown[1] as! [String])
        self.u_a_c_tChooseLabel.text = self.dropDownFunctionality(u_a_c_tChooseLabel, DropDownDetails.u_a_c_tDropDown[0] as! DropDown, u_a_c_tView,DropDownDetails.u_a_c_tDropDown[1] as! [String])
        self.i_d_eChooseLabel.text = self.dropDownFunctionality(i_d_eChooseLabel, DropDownDetails.i_d_eDropDown[0] as! DropDown, i_d_eView,DropDownDetails.i_d_eDropDown[1] as! [String])
    }
    
    
}

