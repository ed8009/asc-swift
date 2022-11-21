// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionPromotionalOfferPricesResponse: Codable, Hashable {
    public var data: [SubscriptionPromotionalOfferPrice]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Hashable {
        case territory(Territory)
        case subscriptionPricePoint(SubscriptionPricePoint)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(Territory.self) {
                self = .territory(value)
            } else if let value = try? container.decode(SubscriptionPricePoint.self) {
                self = .subscriptionPricePoint(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (Territory, SubscriptionPricePoint)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .territory(let value): try container.encode(value)
            case .subscriptionPricePoint(let value): try container.encode(value)
            }
        }
    }

    public init(data: [SubscriptionPromotionalOfferPrice], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
