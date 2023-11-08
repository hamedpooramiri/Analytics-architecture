//
//  ViewController.swift
//  Analytics-architecture
//
//  Created by hamedpouramiri on 11/8/23.
//

import UIKit
import Feature_Module

class ViewController: UIViewController {

    var analyticsService: AnalyticsService?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analyticsService?.log(event: ViewControllerEvents.viewAppeared())
    }
}

struct ViewControllerEvents: AnalyticsEvent {
    var name: String
    var metadata: [String : String]
    
    init(name: String, metadata: [String : String]) {
        self.name = name
        self.metadata = metadata
    }
    
    static func viewAppeared() -> Self {
        ViewControllerEvents(name: "viewAppeared", metadata: [:])
    }
}
