// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Subscriptions.WithID {
    public var subscriptionLocalizations: SubscriptionLocalizations {
        SubscriptionLocalizations(path: path + "/subscriptionLocalizations")
    }

    public struct SubscriptionLocalizations {
        /// Path: `/v1/subscriptions/{id}/subscriptionLocalizations`
        public let path: String

        public func get(fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.SubscriptionLocalizationsResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsSubscriptions, fieldsSubscriptionLocalizations, limit, include), id: "subscriptions-subscriptionLocalizations-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsSubscriptions: [FieldsSubscriptions]?, _ fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
            encoder.encode(fieldsSubscriptionLocalizations, forKey: "fields[subscriptionLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
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
            case subscriptionLocalizations
            case subscriptionPeriod
        }

        public enum FieldsSubscriptionLocalizations: String, Codable, CaseIterable {
            case description
            case locale
            case name
            case state
            case subscription
        }

        public enum Include: String, Codable, CaseIterable {
            case subscription
        }
    }
}
