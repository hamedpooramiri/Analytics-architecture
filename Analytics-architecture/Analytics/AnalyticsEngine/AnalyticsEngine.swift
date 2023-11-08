//
//  AnalyticsEngine.swift
//  Analytics-architecture
//
//  Created by hamedpouramiri on 11/8/23.
//

import Foundation

protocol AnalyticsEngine {
    func send(name: String, metadata: [String: String])
}
