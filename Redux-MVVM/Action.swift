//
//  Action.swift
//  Aon Value Prop
//
//  Created by Charlie Murray on 26/11/2015.
//  Copyright © 2015 Bmore Creative. All rights reserved.
//

import Foundation

struct Action {
    var type: ActionType
    var payload: AnyObject?
}

enum ActionType {
    
    /// Navigation
    case ChangeCorePresentationPage
    case ChangeContentTab
    case ToggleSideNav
    
    /// Authentication
    case LoginSuccess
    case LoginFailure
    case Logout
}
