//
//  Action.swift
//  SimpleExamples
//
//  Created by Glenn Carlo Estonilo on 17/07/2017.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import Foundation

import ReSwift

// all of the actions that can be applied to the state
struct SetCredentials: Action {
    let username : String
    let password : String
}


