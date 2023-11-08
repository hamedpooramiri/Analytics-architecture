//
//  RemoteAnalyticsService.swift
//  Analytics-architecture
//
//  Created by hamedpouramiri on 11/8/23.
//
import Feature_Module
import Foundation

/// Provide application logic here or communicate with domain layer to satisfy business logic

public class RemoteAnalyticsService {
    
    private let analyticsEngine: AnalyticsEngine
    
    init(analyticsEngine: AnalyticsEngine) {
        self.analyticsEngine = analyticsEngine
    }
    
}

extension RemoteAnalyticsService: AnalyticsService {
    public func log(event: AnalyticsEvent) {
        analyticsEngine.send(name: event.name, metadata: event.metadata)
    }
}
