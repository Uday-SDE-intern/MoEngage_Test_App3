//
//  ViewControllerExtension.swift
//  MoEngage_Test_App-3
//
//  Created by UdayKiran Naik on 02/06/23.
//

import Foundation
import UIKit
extension UIViewController{
    
    func hideKeyboardTappedAround(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
    }
    @objc func dismissKeyboard (){
        view.endEditing(true)
    }
    
    func alert1(){
        let alert1 = UIAlertController(title: "HTTP Post Status", message: "Status:404,Failure", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert1.addAction(action)
        self.present(alert1,animated: true,completion: nil)
    }
    func alert2(){
        let alert2 = UIAlertController(title: "HTTP Post Status", message: "Success", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert2.addAction(action)
        self.present(alert2,animated: true,completion: nil)
    }
    
    func setupPostMethod(_ myDictionary: [String:Any]) {
        var urlRequest = URLRequest(url: URL(string: API.api_url)!)
        urlRequest.httpMethod = "POST"
        
        let dataDictionary: [String:Any] = myDictionary
        do{
            let requestBody = try JSONSerialization.data(withJSONObject: dataDictionary, options: .prettyPrinted)
            urlRequest.httpBody = requestBody
            urlRequest.addValue("application/json", forHTTPHeaderField: "content-type")
        }
        catch let error{
            debugPrint(error.localizedDescription)
        }
        
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard let data = data else {
                if error == nil{
                    print(error?.localizedDescription ?? "No data found here")
                }
                return
            }
            
            let responseUrl = response as? HTTPURLResponse
            let status = responseUrl?.statusCode
            if status == 201 {
                DispatchQueue.main.async {
                    self.alert2()
                }
            }
            else{
                DispatchQueue.main.async {
                    self.alert1()
                }
            }
            
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
                
            }catch let error{
                print(error.localizedDescription)
            }
            
        }.resume()
        
    }
    
}
