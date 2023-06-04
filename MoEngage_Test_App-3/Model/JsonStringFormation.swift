//
//  JsonStringFunctionalities.swift
//  MoEngage_Test_App-3
//
//  Created by UdayKiran Naik on 03/06/23.
//

import Foundation
struct JsonStringFormation {
    var text:String
    var jsonString: String
    var key:String
    var dictionary:[String:Any]
    var demoDict: NSMutableDictionary?
    
    mutating func updatePlistDetailsAndJsonString_TextField() ->String {
        var updatedJsonString: String?
        var trimmedString: String
        demoDict?.setValue(text, forKey: key)
        trimmedString = text.trimmingCharacters(in: .whitespaces)
        let modifiedText = self.modifiedOutputString(trimmedString)
        dictionary[key] = self.modifiedOutputString_1(trimmedString)
        updatedJsonString = UITextFieldTojSOn(jsonString, forStringConversion.expression, key, modifiedText)
        return updatedJsonString!
    }
    
    mutating func updatePlistDetailsAndJsonString_DropDown()->String{
        var updatedJsonString: String?
        if (text != forStringConversion.choose){
            demoDict?.setValue(text, forKey: key)
            updatedJsonString = dropDownTojSON(jsonString, forStringConversion.expression, key, text)
            if (text.isInt){
                let integerValue = Int(text)
                dictionary[key] = integerValue
            }
            else{
                dictionary[key] = text
            }
        }
        else{
            updatedJsonString = dropDownTojSON(jsonString, forStringConversion.expression, key, "")
        }
        return updatedJsonString!
    }
    
    func dropDownTojSON (_ jsonString: String,_ expression: String, _ key: String, _ text: String) -> String {
        var jsonString_1 = jsonString
        jsonString_1 = jsonString_1 + "\"" + key + expression
        let boolean = text.isInt
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
            jsonString_1 = jsonString_1 + "\"" + key + expression + "[" + " " + "]" + ","
        }
        return jsonString_1
    }
    func modifiedOutputString (_ text: String)->String{
        let inputString = text
        let outputStringArray = inputString.components(separatedBy: ",")
        let outputString = outputStringArray.map { "\"\($0)\"" }.joined(separator: ",")
        return outputString
    }
    func modifiedOutputString_1 (_ text: String)->[String]{
        let inputString = text
        let outputStringArray = inputString.components(separatedBy: ",")
        return outputStringArray
    }
    
    func updatedDictionary()->[String:Any] {
        return dictionary
    }
    
    func updatedDemoDict()->NSMutableDictionary{
        return demoDict!
    }
}
