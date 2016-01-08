//
//  ViewModel.swift
//  Redux-MVVM
//
//  Created by Jack Murray on 19/12/2015.
//  Copyright © 2015 bmore creative. All rights reserved.
//

import Foundation
import ReactiveCocoa


// An extra layer of abstraction between the Redux dispatcher and the 
// view, to help keep the code in view controllers to a minimum

class ViewModel: StateObserver {
    
    let repository: Repository
    let dispatcher: Dispatcher
    
    var searchText: String = ""
    
    init(repository: Repository, dispatcher: Dispatcher) {
        self.repository = repository
        self.dispatcher = dispatcher
    }
    
    func stateDidChange(state: ApplicationState) {
        // Forward data down the RAC pipes to update the view
    }
}
