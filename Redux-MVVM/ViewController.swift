//
//  ViewController.swift
//  Redux-MVVM
//
//  Created by Jack Murray on 19/12/2015.
//  Copyright © 2015 bmore creative. All rights reserved.
//

import UIKit
import ReactiveCocoa

class ViewController: UIViewController {
    
    var model: ViewModel?

    var textField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up RAC bindings to:
        //   - accept data coming down the pipe from the view model
        //   - send events up the pipe to the view model in order to generate Redux actions
        
        textField!.text <~ model!.searchText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        
    }

}
