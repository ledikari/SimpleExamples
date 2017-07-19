//
//  LoginReducer.swift
//  SimpleExamples
//
//  Created by Glenn Carlo Estonilo on 17/07/2017.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import ReSwift

// the reducer is responsible for evolving the application state based
// on the actions it receives
func loginReducer(action: Action, state: AppState?) -> AppState {
    // if no state has been provided, create the default state
    var state = state ?? AppState(username:"", password:"")
    
    switch action {
    case let action as SetCredentials:
        state.username = action.username
        state.password = action.password
    default:
        break
    }
    
    return state
}
