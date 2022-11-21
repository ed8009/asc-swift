// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CustomerReviewResponseV1Response: Codable, Hashable {
    /// CustomerReviewResponseV1
    public var data: CustomerReviewResponseV1
    public var included: [CustomerReview]?
    public var links: DocumentLinks

    public init(data: CustomerReviewResponseV1, included: [CustomerReview]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
