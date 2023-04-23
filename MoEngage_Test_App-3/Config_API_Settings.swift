//
//  Config_API_Settings.swift
//  MoEngage_Test_App-3
//
//  Created by UdayKiran Naik on 21/04/23.
//

import UIKit
import DropDown
class Config_API_Settings: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var f_e: UITextField!
    
    @IBOutlet weak var b_e: UITextField!
    
    @IBOutlet weak var d_t_w_e: UITextField!
    
    @IBOutlet weak var b_uid_r: UITextField!
    
    var demoDict : NSMutableDictionary?
    var plistPath: String?
    var path: String?
    var text: String?
    let choose:String = "Choose"
    var jsonString:String = "{"
    var trimmedString: String = ""
    var expression: String = "\"" + ":" + " "
    //le_s starts here
    @IBOutlet weak var le_sView: UIView!
    
    @IBAction func le_sButton(_ sender: Any) {
        le_sDropDown.show()
    }
    
    @IBOutlet weak var le_sChooseLabel: UILabel!
    let le_sDropDown = DropDown()
    let le_sValArray = ["allowed","blocked"]
    //le_s ends here
    
    
    //a_s starts here
    @IBOutlet weak var a_sView: UIView!
    
    @IBAction func a_sButton(_ sender: Any) {
        a_sDropDown.show()
    }
    
    @IBOutlet weak var a_sChooseLabel: UILabel!
    let a_sDropDown = DropDown()
    let a_sValArray = ["allowed","blocked"]
    //a_s ends here
    
    //dt_s_t starts here
    @IBOutlet weak var dt_s_tView: UIView!
    
    @IBAction func dt_s_tButton(_ sender: Any) {
        dt_s_tDropDown.show()
    }
    
    @IBOutlet weak var dt_s_tChooseLabel: UILabel!
    let dt_s_tDropDown = DropDown()
    let dt_s_tValArray = ["10800"]
    //dt_s_t ends here
    
    //le_tkn starts here
    @IBOutlet weak var le_tknView: UIView!
    
    @IBAction func le_tknButton(_ sender: Any) {
        le_tknDropDown.show()
    }
    
    @IBOutlet weak var le_tknChooseLabel: UILabel!
    let le_tknDropDown = DropDown()
    let le_tknValArray = ["nil"]
    //le_tkn ends here
    
    //d_s_r_i starts here
    @IBOutlet weak var d_s_r_iView: UIView!
    
    @IBAction func d_s_r_iButton(_ sender: Any) {
        d_s_r_iDropDown.show()
    }
    
    @IBOutlet weak var d_s_r_iChooseLabel: UILabel!
    let d_s_r_iDropDown = DropDown()
    let d_s_r_iValArray = ["1800"]
    //d_s_r_i ends here
    
    //p_f_t starts here
    @IBOutlet weak var p_f_tView: UIView!
    
    @IBAction func p_f_tButton(_ sender: Any) {
        p_f_tDropDown.show()
    }
    
    @IBOutlet weak var p_f_tChooseLabel: UILabel!
    let p_f_tDropDown = DropDown()
    let p_f_tValArray = ["60"]
    //p_f_t ends here
    
    //p_f_s starts here
    @IBOutlet weak var p_f_sView: UIView!
    
    @IBAction func p_f_sButton(_ sender: Any) {
        p_f_sDropDown.show()
    }
    
    @IBOutlet weak var p_f_sChooseLabel: UILabel!
    let p_f_sDropDown = DropDown()
    let p_f_sValArray = ["allowed","blocked"]
    //p_f_s ends here
    
    //d_t starts here
    @IBOutlet weak var d_tView: UIView!
    
    @IBAction func d_tButton(_ sender: Any) {
        d_tDropDown.show()
    }
    
    @IBOutlet weak var d_tChooseLabel: UILabel!
    let d_tDropDown = DropDown()
    let d_tValArray = ["allowed","blocked"]
    //d_t ends here
    
    //e_b_c starts here
    @IBOutlet weak var e_b_cView: UIView!
    
    @IBAction func e_b_cButton(_ sender: Any) {
        e_b_cDropDown.show()
    }
    
    @IBOutlet weak var e_b_cChooseLabel: UILabel!
    let e_b_cDropDown = DropDown()
    let e_b_cValArray = ["30"]
    //e_b_c ends here
    
    //e_e_t starts here
    @IBOutlet weak var e_e_tView: UIView!
    
    @IBAction func e_e_tButton(_ sender: Any) {
        e_e_tDropDown.show()
    }
    
    @IBOutlet weak var e_e_tChooseLabel: UILabel!
    let e_e_tDropDown = DropDown()
    let e_e_tValArray = ["allowed","blocked"]
    //e_e_t ends here
    
    //cid_ex starts here
    @IBOutlet weak var cid_exView: UIView!
    
    @IBAction func cid_exButton(_ sender: Any) {
        cid_exDropDown.show()
    }
    
    @IBOutlet weak var cid_exChooseLabel: UILabel!
    let cid_exDropDown = DropDown()
    let cid_exValArray = ["2419200000"]
    //cid_ex ends here
    
    //g_s starts here
    @IBOutlet weak var g_sView: UIView!
    
    @IBAction func g_sButton(_ sender: Any) {
        g_sDropDown.show()
    }
    
    @IBOutlet weak var g_sChooseLabel: UILabel!
    let g_sDropDown = DropDown()
    let g_sValArray = ["allowed","blocked"]
    //g_s ends here
    
    //in_s starts here
    @IBOutlet weak var in_sView: UIView!
    
    @IBAction func in_sButton(_ sender: Any) {
        in_sDropDown.show()
    }
    
    @IBOutlet weak var in_sChooseLabel: UILabel!
    let in_sDropDown = DropDown()
    let in_sValArray = ["allowed","blocked"]
    //in_s ends here
    
    //m_s_t starts here
    @IBOutlet weak var m_s_tView: UIView!
    
    @IBAction func m_s_tButton(_ sender: Any) {
        m_s_tDropDown.show()
    }
    
    @IBOutlet weak var m_s_tChooseLabel: UILabel!
    let m_s_tDropDown = DropDown()
    let m_s_tValArray = ["10800"]
    //m_s_t ends here
    
    //i_s starts here
    @IBOutlet weak var i_sView: UIView!
    
    @IBAction func i_sButton(_ sender: Any) {
        i_sDropDown.show()
    }
    
    @IBOutlet weak var i_sChooseLabel: UILabel!
    let i_sDropDown = DropDown()
    let i_sValArray = ["allowed","blocked"]
    //i_s ends here
    
    //u_a_c_t starts here
    @IBOutlet weak var u_a_c_tView: UIView!
    
    @IBAction func u_a_c_tButton(_ sender: Any) {
        u_a_c_tDropDown.show()
    }
    
    @IBOutlet weak var u_a_c_tChooseLabel: UILabel!
    let u_a_c_tDropDown = DropDown()
    let u_a_c_tValArray = ["1800"]
    //u_a_c_t ends here
    
    //i_d_e starts here
    @IBOutlet weak var i_d_eView: UIView!
    
    @IBAction func i_d_eButton(_ sender: Any) {
        i_d_eDropDown.show()
    }
    
    @IBOutlet weak var i_d_eChooseLabel: UILabel!
    let i_d_eDropDown = DropDown()
    let i_d_eValArray = ["2592000"]
    //i_d_e ends here
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func Save(_ sender: Any) {
        createPlist()
        if let plistPath_1 = plistPath{
            text = f_e.text
            if let text_1 = text {
                demoDict?.setValue(text_1, forKey: "f_e")
                trimmedString = text_1.trimmingCharacters(in: .whitespaces)
                let modifiedText = self.modifiedOutputString(trimmedString)
                jsonString = UITextFieldTojSOn(jsonString, expression, "f_e", modifiedText)
            }
            text = b_e.text
            if let text_1 = text {
                demoDict?.setValue(text_1, forKey: "b_e")
                trimmedString = text_1.trimmingCharacters(in: .whitespaces)
                let modifiedText = self.modifiedOutputString(trimmedString)
                jsonString = UITextFieldTojSOn(jsonString, expression, "b_e", modifiedText)
            }
            text = d_t_w_e.text
            if let text_1 = text {
                demoDict?.setValue(text_1, forKey: "d_t_w_e")
                trimmedString = text_1.trimmingCharacters(in: .whitespaces)
                let modifiedText = self.modifiedOutputString(trimmedString)
                jsonString = UITextFieldTojSOn(jsonString, expression, "d_t_w_e", modifiedText)
            }
            text = b_uid_r.text
            if let text_1 = text {
                demoDict?.setValue(text_1, forKey: "b_uid_r")
                trimmedString = text_1.trimmingCharacters(in: .whitespaces)
                let modifiedText = self.modifiedOutputString(trimmedString)
                jsonString = UITextFieldTojSOn(jsonString, expression, "b_uid_r", modifiedText)
            }
            text = le_sChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                   demoDict?.setValue(text, forKey: "le_s")
                   jsonString = dropDownTojSON(jsonString, expression, "le_s", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "le_s", "")
                }
            }
            text = a_sChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "a_s")
                    jsonString = dropDownTojSON(jsonString, expression, "a_s", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "a_s", "")
                }
            }
            text = dt_s_tChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "dt_s_t")
                    jsonString = dropDownTojSON(jsonString, expression, "dt_s_t", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "dt_s_t", "")
                }
            }
            text = le_tknChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "le_tkn")
                    jsonString = dropDownTojSON(jsonString, expression, "le_tkn", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "le_tkn", "")
                }
            }
            text = d_s_r_iChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "d_s_r_i")
                    jsonString = dropDownTojSON(jsonString, expression, "d_s_r_i", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "d_s_r_i", "")
                }
            }
            text = p_f_tChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "p_f_t")
                    jsonString = dropDownTojSON(jsonString, expression, "p_f_t", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "p_f_t", "")
                }
            }
            text = p_f_sChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "p_f_s")
                    jsonString = dropDownTojSON(jsonString, expression, "p_f_s", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "p_f_s", "")
                }
            }
            text = d_tChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "d_t")
                    jsonString = dropDownTojSON(jsonString, expression, "d_t", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "d_t", "")
                }
            }
            text = e_b_cChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "e_b_c")
                    jsonString = dropDownTojSON(jsonString, expression, "e_b_c", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "e_b_c", "")
                }
            }
            text = e_e_tChooseLabel.text
            if let text_1 = text{
                if(text_1 != choose){
                    demoDict?.setValue(text, forKey: "e_e_t")
                    jsonString = dropDownTojSON(jsonString, expression, "e_e_t", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "e_e_t", "")
                }
                
            }
            text = cid_exChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "cid_ex")
                    jsonString = dropDownTojSON(jsonString, expression, "cid_ex", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "cid_ex", "")
                }
            }
            text = g_sChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "g_s")
                    jsonString = dropDownTojSON(jsonString, expression, "g_s", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "g_s", "")
                }
            }
            text = in_sChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "in_s")
                    jsonString = dropDownTojSON(jsonString, expression, "in_s", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "in_s", "")
                }
            }
            text = m_s_tChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "m_s_t")
                    jsonString = dropDownTojSON(jsonString, expression, "m_s_t", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "m_s_t", "")
                }
            }
            text = i_sChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "i_s")
                    jsonString = dropDownTojSON(jsonString, expression, "i_s", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "i_s", "")
                }
            }
            text = u_a_c_tChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "u_a_c_t")
                    jsonString = dropDownTojSON(jsonString, expression, "u_a_c_t", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "u_a_c_t", "")
                }
            }
            text = i_d_eChooseLabel.text
            if let text_1 = text{
                if (text_1 != choose){
                    demoDict?.setValue(text, forKey: "i_d_e")
                    jsonString = dropDownTojSON(jsonString, expression, "i_d_e", text_1)
                }
                else{
                    jsonString = dropDownTojSON(jsonString, expression, "i_d_e", "")
                }
            }
            jsonString.removeLast()
            jsonString = jsonString + "}"
            print(jsonString)
            demoDict?.write(toFile: plistPath_1, atomically: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        f_e.delegate = self
        b_e.delegate = self
        d_t_w_e.delegate = self
        b_uid_r.delegate = self
        self.hideKeyboardTappedAround()
        createPlist()
        if let plistPath_1 = plistPath{
            demoDict = NSMutableDictionary(contentsOfFile: plistPath_1)
            if let dict = demoDict{
                let f_e_1 = dict.value(forKey: "f_e") as? String
                let b_e_1 = dict.value(forKey: "b_e") as? String
                let d_t_w_e_1 = dict.value(forKey: "d_t_w_e") as? String
                let b_uid_r_1 = dict.value(forKey: "b_uid_r") as? String
                let le_s_1 = dict.value(forKey: "le_s") as? String
                let a_s_1 = dict.value(forKey: "a_s") as? String
                let dt_s_t_1 = dict.value(forKey: "dt_s_t") as? String
                let le_tkn_1 = dict.value(forKey: "le_tkn") as? String
                let d_s_r_i_1 = dict.value(forKey: "d_s_r_i") as? String
                let p_f_t_1 = dict.value(forKey: "p_f_t") as? String
                let p_f_s_1 = dict.value(forKey: "p_f_s") as? String
                let d_t_1 = dict.value(forKey: "d_t") as? String
                let e_b_c_1 = dict.value(forKey: "e_b_c") as? String
                let e_e_t_1 = dict.value(forKey: "e_e_t") as? String
                let cid_ex_1 = dict.value(forKey: "cid_ex") as? String
                let g_s_1 = dict.value(forKey: "g_s") as? String
                let in_s_1 = dict.value(forKey: "in_s") as? String
                let m_s_t_1 = dict.value(forKey: "m_s_t") as? String
                let i_s_1 = dict.value(forKey: "i_s") as? String
                let u_a_c_t_1 = dict.value(forKey: "u_a_c_t") as? String
                let i_d_e_1 = dict.value(forKey: "i_d_e") as? String
                if  let retrievedData = f_e_1{
                    f_e.text = retrievedData
                }
                if  let retrievedData = b_e_1{
                    b_e.text = retrievedData
                }
                if let retrievedData = d_t_w_e_1{
                    d_t_w_e.text = retrievedData
                }
                if let retrievedData = b_uid_r_1{
                    b_uid_r.text = retrievedData
                }
                if let retrievedData = le_s_1{
                    le_sChooseLabel.text = retrievedData
                    le_sChooseLabel.textColor = .black
                }
                if let retrievedData = a_s_1{
                    a_sChooseLabel.text = retrievedData
                    a_sChooseLabel.textColor = .black
                }
                if let retrievedData = dt_s_t_1{
                    dt_s_tChooseLabel.text = retrievedData
                    dt_s_tChooseLabel.textColor = .black
                }
                if let retrievedData = le_tkn_1{
                    le_tknChooseLabel.text = retrievedData
                    le_tknChooseLabel.textColor = .black
                }
                if let retrievedData = d_s_r_i_1{
                    d_s_r_iChooseLabel.text = retrievedData
                    d_s_r_iChooseLabel.textColor = .black
                }
                if let retrievedData = p_f_t_1{
                    p_f_tChooseLabel.text = retrievedData
                    p_f_tChooseLabel.textColor = .black
                }
                if let retrievedData = p_f_s_1{
                    p_f_sChooseLabel.text = retrievedData
                    p_f_sChooseLabel.textColor = .black
                }
                if let retrievedData = d_t_1{
                    d_tChooseLabel.text = retrievedData
                    d_tChooseLabel.textColor = .black
                }
                if let retrievedData = e_b_c_1{
                    e_b_cChooseLabel.text = retrievedData
                    e_b_cChooseLabel.textColor = .black
                }
                if let retrievedData = e_e_t_1{
                    e_e_tChooseLabel.text = retrievedData
                    e_e_tChooseLabel.textColor = .black
                }
                if let retrievedData = cid_ex_1{
                    cid_exChooseLabel.text = retrievedData
                    cid_exChooseLabel.textColor = .black
                }
                if let retrievedData = g_s_1{
                    g_sChooseLabel.text = retrievedData
                    g_sChooseLabel.textColor = .black
                }
                if let retrievedData = in_s_1{
                    in_sChooseLabel.text = retrievedData
                    in_sChooseLabel.textColor = .black
                }
                if let retrievedData = m_s_t_1{
                    m_s_tChooseLabel.text = retrievedData
                    m_s_tChooseLabel.textColor = .black
                }
                if let retrievedData = i_s_1{
                    i_sChooseLabel.text = retrievedData
                    i_sChooseLabel.textColor = .black
                }
                if let retrievedData = u_a_c_t_1{
                    u_a_c_tChooseLabel.text = retrievedData
                    u_a_c_tChooseLabel.textColor = .black
                }
                if let retrievedData = i_d_e_1{
                    i_d_eChooseLabel.text = retrievedData
                    i_d_eChooseLabel.textColor = .black
                }
            }
        }
        self.le_sChooseLabel.text = self.functionality(le_sChooseLabel, le_sDropDown, le_sView, le_sValArray)
        self.a_sChooseLabel.text = self.functionality(a_sChooseLabel, a_sDropDown, a_sView, a_sValArray)
        self.dt_s_tChooseLabel.text = self.functionality(dt_s_tChooseLabel, dt_s_tDropDown, dt_s_tView, dt_s_tValArray)
        self.le_tknChooseLabel.text = self.functionality(le_tknChooseLabel, le_tknDropDown, le_tknView, le_tknValArray)
        self.d_s_r_iChooseLabel.text = self.functionality(d_s_r_iChooseLabel, d_s_r_iDropDown, d_s_r_iView, d_s_r_iValArray)
        self.p_f_tChooseLabel.text = self.functionality(p_f_tChooseLabel, p_f_tDropDown, p_f_tView, p_f_tValArray)
        self.p_f_sChooseLabel.text = self.functionality(p_f_sChooseLabel, p_f_sDropDown, p_f_sView, p_f_sValArray)
        self.d_tChooseLabel.text = self.functionality(d_tChooseLabel, d_tDropDown, d_tView, d_tValArray)
        self.e_b_cChooseLabel.text = self.functionality(e_b_cChooseLabel, e_b_cDropDown, e_b_cView, e_b_cValArray)
        self.e_e_tChooseLabel.text = self.functionality(e_e_tChooseLabel, e_e_tDropDown, e_e_tView, e_e_tValArray)
        self.cid_exChooseLabel.text = self.functionality(cid_exChooseLabel, cid_exDropDown, cid_exView, cid_exValArray)
        self.g_sChooseLabel.text = self.functionality(g_sChooseLabel, g_sDropDown, g_sView, g_sValArray)
        self.in_sChooseLabel.text = self.functionality(in_sChooseLabel, in_sDropDown, in_sView, in_sValArray)
        self.m_s_tChooseLabel.text = self.functionality(m_s_tChooseLabel, m_s_tDropDown, m_s_tView, m_s_tValArray)
        self.i_sChooseLabel.text = self.functionality(i_sChooseLabel, i_sDropDown, i_sView, i_sValArray)
        self.u_a_c_tChooseLabel.text = self.functionality(u_a_c_tChooseLabel, u_a_c_tDropDown, u_a_c_tView, u_a_c_tValArray)
        self.i_d_eChooseLabel.text = self.functionality(i_d_eChooseLabel, i_d_eDropDown, i_d_eView, i_d_eValArray)
    }
    

    func createPlist(){
        path = Bundle.main.path(forResource: "Demo", ofType: "plist")
        if let path_1 =  path{
            let directories = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) as Array
            let docPath = directories[0] as String
            plistPath = docPath.appending("Demo.plist")
            if let plistPath_1 = plistPath {
                let filemanager = FileManager.default
                if(!filemanager.fileExists(atPath: plistPath_1))
                {
                    do{
                        try filemanager.copyItem(atPath: path_1, toPath: plistPath_1)
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
    }
    
    
}
extension UIViewController{
    func hideKeyboardTappedAround(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
    }
    @objc func dismissKeyboard (){
        view.endEditing(true)
    }
    func functionality(_ chooseLabel:UILabel,_ dropDown: DropDown, _ dropDownView: UIView, _ valArray: Array<String>) -> String
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
    
    func stringHasNumber(_ string:String) -> Bool {
        for character in string{
            if character.isNumber{
                return true
            }
        }
        return false
    }
    
    func dropDownTojSON (_ jsonString: String,_ expression: String, _ key: String, _ text: String) -> String {
        var jsonString_1 = jsonString
        jsonString_1 = jsonString_1 + "\"" + key + expression
        let boolean = stringHasNumber(text)
        if (boolean == true)
        {
            jsonString_1 = jsonString_1 + text + ","
        }
        else{
            jsonString_1 = jsonString_1 + "\"" + text + "\"" + ","
        }
        return jsonString_1
    }
    func UITextFieldTojSOn (_ jsonString: String,_ expression: String, _ key: String, _ text: String) -> String {
        var jsonString_1 = jsonString
        let expression_1 = "\"\""
        if (text != expression_1){
            jsonString_1 = jsonString_1 + "\"" + key + expression + "[" + text + "]" + ","
        }
        else{
            jsonString_1 = jsonString_1 + "\"" + key + expression + "[" + "   " + "]" + ","
        }
        return jsonString_1
    }
    func modifiedOutputString (_ text: String)->String{
        let inputString = text
        let outputStringArray = inputString.components(separatedBy: ",")
        let outputString = outputStringArray.map { "\"\($0)\"" }.joined(separator: ",")
         return outputString
    }
}
