//
//  AnalyticsService.swift
//  Analytics-architecture
//
//  Created by hamedpouramiri on 11/8/23.
//

import Foundation

protocol AnalyticsService {
    func log(event: AnalyticsEvent)
}

protocol AnalyticsEvent {
    var name: String { get set }
    var metadata: [String: String] { get set }
}
