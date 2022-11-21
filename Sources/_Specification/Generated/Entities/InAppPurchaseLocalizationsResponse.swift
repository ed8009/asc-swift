// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchaseLocalizationsResponse: Codable, Hashable {
    public var data: [InAppPurchaseLocalization]
    public var included: [InAppPurchaseV2]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [InAppPurchaseLocalization], included: [InAppPurchaseV2]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
