//
//  LoginPageViewController.swift
//  SimpleExamples
//
//  Created by Glenn Carlo Estonilo on 17/07/2017.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import Foundation
import UIKit
import ReSwift

class LoginPageViewController: UIViewController {
    
    typealias StoreSubscriberStateType = AppState
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func doSubmit(_ sender: Any) {

        guard let user = userName.text , !user.isEmpty else {
            return
        }
        
        guard let pass = password.text , !pass.isEmpty else {
            return
        }
        
        //Dispatch an action
        mainStore.dispatch(SetCredentials(username: user, password: pass))
        
        let viewController = mainStoryBoard.instantiateViewController( withIdentifier: "DetailsViewController") 
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
}

