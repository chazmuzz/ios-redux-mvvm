//
//  ApplicationState.swift
//  Aon Value Prop
//
//  Created by Charlie Murray on 26/11/2015.
//  Copyright © 2015 Bmore Creative. All rights reserved.
//

import Foundation


struct ApplicationState {
    var navigation = NavigationState()
}

struct NavigationState {
    
}


func coreReducer(state: ApplicationState, action: Action) -> ApplicationState {
    var newState = state
    newState.navigation = navigationReducer(state.navigation, action: action)
    return newState
}


func navigationReducer(state: NavigationState, action: Action) -> NavigationState {
    return state
}
