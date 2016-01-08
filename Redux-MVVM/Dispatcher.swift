//
//  Dispatcher.swift
//  Aon Value Prop
//
//  Created by Jack Murray on 26/11/2015.
//  Copyright © 2015 Bmore Creative. All rights reserved.
//

import Foundation


protocol StateObserver: AnyObject {
    func stateDidChange(state: ApplicationState)
}

public class Dispatcher: AnyObject {
    
    /// READ-ONLY state. The state is updated by sending an action to the dispatcher
    private(set) var state = ApplicationState() {
        didSet {
            for observer in observers {
                observer.stateDidChange(state)
            }
        }
    }
    
    private(set) var actionQueue = [Action]() {
        didSet {
            processQueue()
        }
    }
    
    private var observers = [StateObserver]()
    
    func addStateObserver(target: StateObserver) {
        observers = observers + [target]
    }
    
    func removeStateObserver(target: StateObserver) {
        observers = observers.filter({ $0 !== target })
    }
    
    func sendAction(type: ActionType) {
        sendAction(Action(type: type, payload: nil))
    }
    
    func sendAction(type: ActionType, payload: AnyObject) {
        sendAction(Action(type: type, payload: payload))
    }
    
    func sendAction(action: Action) {
        actionQueue = actionQueue + [action]
    }
    
    private func processQueue() {
        guard let action = actionQueue.first else {
            return
        }
        
        state = coreReducer(state, action: action)
        
        actionQueue = Array(actionQueue.dropFirst())
    }
}

