//
//  ViewController.swift
//  TrafficLightVersion
//
//  Created by  Mr.Ki on 09.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = 0
    
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    /// This function changing screen color
    fileprivate func updateUI() {
        
        switch isLightOn {
        case 1:
            view.backgroundColor = .green
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .red
        default:
            view.backgroundColor = .black
        }
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn = isLightOn < 3 ? isLightOn + 1 : 1
        updateUI()
        
    }
    
    
    
    
}


