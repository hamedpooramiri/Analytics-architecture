//
//  AnalyticsService.swift
//  Analytics-architecture
//
//  Created by hamedpouramiri on 11/8/23.
//

import Foundation

public protocol AnalyticsService {
    func log(event: AnalyticsEvent)
}

public protocol AnalyticsEvent {
    var name: String { get set }
    var metadata: [String: String] { get set }
}
