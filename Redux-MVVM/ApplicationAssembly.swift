//
//  ApplicationAssembly.swift
//  Redux-MVVM
//
//  Created by Jack Murray on 19/12/2015.
//  Copyright © 2015 bmore creative. All rights reserved.
//

import Foundation
import Typhoon

class ApplicationAssembly: TyphoonAssembly {
 
    func dispatcher() -> AnyObject {
        return TyphoonDefinition.withClass(Dispatcher.self, configuration: { definition in
            definition.scope = .Singleton
        })
    }
    
    func repository() -> AnyObject {
        return TyphoonDefinition.withClass(Repository.self)
    }
    
    func viewModel() -> AnyObject {
        return TyphoonDefinition.withClass(ViewModel.self, configuration: { definition in
            
        })
    }
    
    func viewController() -> AnyObject {
        return TyphoonDefinition.withClass(ViewController.self, configuration: { definition in
            definition.injectProperty("viewModel", with: self.viewModel())
        })
    }
    
}
