//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Mojave on 18.02.2020.
//  Copyright © 2020 Hulya Aydogmus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        var myLabel = UILabel()
        override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let width = view.frame.size.width
        let height = view.frame.size.height
                      
        myLabel.text = "Text Label"
        myLabel.textAlignment = .center // label ın nerede olacağınaı ayarlarız .center,.left,.right gibi
        myLabel.frame = CGRect(x: width*0.5-width*0.8/2, y: height*0.5-50/2, width: width*0.8, height: 50) // görünümüm boyu ve lokasyonunu ayarlamak için kullanılır
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.cyan, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width*0.5-100, y: height*0.6, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self , action:#selector(ViewController.myAction), for: UIControl.Event.touchUpInside)//target aslında bir viewcontroller action yazılacak ve bu action dan bir function yazılacak ve bu function u buraya  action  gibi kaydedeceğiz  bu action ve function birbirine bağlanması için ikisininde viewcontroller içinde olmalıdır.hedef dediği aslında  viewcontroller ın kendisidir.
    
    
    }
    @objc func myAction(){
        myLabel.text="Tapped"
    }

}

