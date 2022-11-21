// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchaseAppStoreReviewScreenshotResponse: Codable, Hashable {
    /// InAppPurchaseAppStoreReviewScreenshot
    public var data: InAppPurchaseAppStoreReviewScreenshot
    public var included: [InAppPurchaseV2]?
    public var links: DocumentLinks

    public init(data: InAppPurchaseAppStoreReviewScreenshot, included: [InAppPurchaseV2]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
