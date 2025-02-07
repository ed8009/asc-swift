// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Subscriptions.WithID {
    public var promotionalOffers: PromotionalOffers {
        PromotionalOffers(path: path + "/promotionalOffers")
    }

    public struct PromotionalOffers {
        /// Path: `/v1/subscriptions/{id}/promotionalOffers`
        public let path: String

        public func get(filterTerritory: [String]? = nil, fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices]? = nil, limit: Int? = nil, limitPrices: Int? = nil, include: [Include]? = nil) -> Request<_Specification.SubscriptionPromotionalOffersResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterTerritory, fieldsSubscriptionPromotionalOffers, fieldsSubscriptions, fieldsSubscriptionPromotionalOfferPrices, limit, limitPrices, include), id: "subscriptions-promotionalOffers-get_to_many_related")
        }

        private func makeGetQuery(_ filterTerritory: [String]?, _ fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]?, _ fieldsSubscriptions: [FieldsSubscriptions]?, _ fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices]?, _ limit: Int?, _ limitPrices: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterTerritory, forKey: "filter[territory]")
            encoder.encode(fieldsSubscriptionPromotionalOffers, forKey: "fields[subscriptionPromotionalOffers]")
            encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
            encoder.encode(fieldsSubscriptionPromotionalOfferPrices, forKey: "fields[subscriptionPromotionalOfferPrices]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitPrices, forKey: "limit[prices]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsSubscriptionPromotionalOffers: String, Codable, CaseIterable {
            case duration
            case name
            case numberOfPeriods
            case offerCode
            case offerMode
            case prices
            case subscription
        }

        public enum FieldsSubscriptions: String, Codable, CaseIterable {
            case appStoreReviewScreenshot
            case availableInAllTerritories
            case familySharable
            case group
            case groupLevel
            case introductoryOffers
            case name
            case offerCodes
            case pricePoints
            case prices
            case productID = "productId"
            case promotedPurchase
            case promotionalOffers
            case reviewNote
            case state
            case subscriptionAvailability
            case subscriptionLocalizations
            case subscriptionPeriod
        }

        public enum FieldsSubscriptionPromotionalOfferPrices: String, Codable, CaseIterable {
            case subscriptionPricePoint
            case territory
        }

        public enum Include: String, Codable, CaseIterable {
            case prices
            case subscription
        }
    }
}
