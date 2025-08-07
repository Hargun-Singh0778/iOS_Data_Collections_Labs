//
//  ViewController.swift
//  AppEventCount
//
//  Created by Student on 07/08/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var didFinishLaunchLabel: UILabel!
    @IBOutlet weak var willConnectLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    @IBOutlet weak var sceneWillResignActiveLabel: UILabel!
    @IBOutlet weak var sceneWillEnterForegroundLabel: UILabel!
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView(){
        
        didFinishLaunchLabel.text = "App Launched: \(appDelegate.launchCount) time(s)"
        configurationForConnectingLabel.text = "Config for Connecting: \(appDelegate.confirgurationForConnectingCount) time(s)"
        willConnectLabel.text = "Will Connect: \(willConnectCount)"
        sceneDidBecomeActiveLabel.text = "Did Become Active: \(didBecomeActiveCount)"
        sceneWillResignActiveLabel.text = "Will Resign Active: \(willResignActiveCount)"
        sceneWillEnterForegroundLabel.text = "Will Enter Foreground: \(willEnterForegroundCount)"
        sceneDidEnterBackgroundLabel.text = "Did Enter Background: \(didEnterBackgroundCount)"
    }


}

