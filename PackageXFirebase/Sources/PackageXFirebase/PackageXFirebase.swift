// The Swift Programming Language
// https://docs.swift.org/swift-book

import FirebaseAnalytics

public class FirebaseAnalyticsService {
    public init() {}
    
    public func track(event: AnalyticsEvent) {
        Analytics.logEvent(event.name, parameters: event.params)
    }
}

public struct AnalyticsEvent {
    let name: String
    let params: [String: Any]
    
    public init(name: String, params: [String: Any]) {
        self.name = name
        self.params = params
    }
}
