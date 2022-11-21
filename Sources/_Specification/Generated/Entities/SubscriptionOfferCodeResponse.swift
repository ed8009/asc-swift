// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionOfferCodeResponse: Codable, Hashable {
    /// SubscriptionOfferCode
    public var data: SubscriptionOfferCode
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Hashable {
        case subscription(Subscription)
        case subscriptionOfferCodeOneTimeUseCode(SubscriptionOfferCodeOneTimeUseCode)
        case subscriptionOfferCodeCustomCode(SubscriptionOfferCodeCustomCode)
        case subscriptionOfferCodePrice(SubscriptionOfferCodePrice)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(Subscription.self) {
                self = .subscription(value)
            } else if let value = try? container.decode(SubscriptionOfferCodeOneTimeUseCode.self) {
                self = .subscriptionOfferCodeOneTimeUseCode(value)
            } else if let value = try? container.decode(SubscriptionOfferCodeCustomCode.self) {
                self = .subscriptionOfferCodeCustomCode(value)
            } else if let value = try? container.decode(SubscriptionOfferCodePrice.self) {
                self = .subscriptionOfferCodePrice(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (Subscription, SubscriptionOfferCodeOneTimeUseCode, SubscriptionOfferCodeCustomCode, SubscriptionOfferCodePrice)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .subscription(let value): try container.encode(value)
            case .subscriptionOfferCodeOneTimeUseCode(let value): try container.encode(value)
            case .subscriptionOfferCodeCustomCode(let value): try container.encode(value)
            case .subscriptionOfferCodePrice(let value): try container.encode(value)
            }
        }
    }

    public init(data: SubscriptionOfferCode, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
