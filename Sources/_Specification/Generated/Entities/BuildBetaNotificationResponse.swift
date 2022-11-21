// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BuildBetaNotificationResponse: Codable, Hashable {
    /// BuildBetaNotification
    public var data: BuildBetaNotification
    public var links: DocumentLinks

    public init(data: BuildBetaNotification, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
