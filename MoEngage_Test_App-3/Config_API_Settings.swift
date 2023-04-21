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
    
    //le_s starts here
    @IBOutlet weak var le_sView: UIView!
    
    @IBAction func le_sButton(_ sender: Any) {
        le_sDropDown.show()
    }
    
    @IBOutlet weak var le_sChooseLabel: UILabel!
    let le_sDropDown = DropDown()
    let le_sValArray = ["Allowed","Blocked"]
    //le_s ends here
    
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
            }
            text = b_e.text
            if let text_1 = text {
                demoDict?.setValue(text_1, forKey: "b_e")
            }
            text = d_t_w_e.text
            if let text_1 = text {
                demoDict?.setValue(text_1, forKey: "d_t_w_e")
            }
            text = b_uid_r.text
            if let text_1 = text {
                demoDict?.setValue(text_1, forKey: "b_uid_r")
            }
            text = le_sChooseLabel.text
            if text != choose{
                demoDict?.setValue(text, forKey: "le_s")
            }
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
                
            }
        }
        self.le_sChooseLabel.text = self.functionality(le_sChooseLabel, le_sDropDown, le_sView, le_sValArray)
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
    
}
