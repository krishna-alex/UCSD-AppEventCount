//
//  ViewController.swift
//  AppEventCount
//
//  Created by Krishna Alex on 4/7/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var launchLabel: UILabel!
    @IBOutlet weak var configurationCountLabel: UILabel!
    @IBOutlet weak var willConnectLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
        
    }
    
    func updateView() {
        launchLabel.text = "App had launched \(appDelegate.launchCount) times."
        configurationCountLabel.text = "configurationForConnecting count \(appDelegate.configurationForConnectingCount) times."
        print(appDelegate.configurationForConnectingCount)
        willConnectLabel.text = "Scene will connect \(willConnectCount) times."
        didBecomeActiveLabel.text = "Scene did become active \(didBecomeActiveCount) times."
        willResignActiveLabel.text = "Scene will resign active \(willResignActiveCount) times."
        willEnterForegroundLabel.text = "Scene will enter foreground \(willEnterForegroundCount) times."
        didEnterBackgroundLabel.text = "Scene did enter background \(didEnterBackgroundCount) times."
        
    }


}

