// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V2.InAppPurchases.WithID {
    public var inAppPurchaseLocalizations: InAppPurchaseLocalizations {
        InAppPurchaseLocalizations(path: path + "/inAppPurchaseLocalizations")
    }

    public struct InAppPurchaseLocalizations {
        /// Path: `/v2/inAppPurchases/{id}/inAppPurchaseLocalizations`
        public let path: String

        public func get(fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.InAppPurchaseLocalizationsResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsInAppPurchaseLocalizations, fieldsInAppPurchases, limit, include), id: "inAppPurchases-inAppPurchaseLocalizations-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]?, _ fieldsInAppPurchases: [FieldsInAppPurchases]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchaseLocalizations, forKey: "fields[inAppPurchaseLocalizations]")
            encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsInAppPurchaseLocalizations: String, Codable, CaseIterable {
            case description
            case inAppPurchaseV2
            case locale
            case name
            case state
        }

        public enum FieldsInAppPurchases: String, Codable, CaseIterable {
            case app
            case appStoreReviewScreenshot
            case availableInAllTerritories
            case content
            case contentHosting
            case familySharable
            case iapPriceSchedule
            case inAppPurchaseLocalizations
            case inAppPurchaseType
            case name
            case pricePoints
            case productID = "productId"
            case promotedPurchase
            case reviewNote
            case state
        }

        public enum Include: String, Codable, CaseIterable {
            case inAppPurchaseV2
        }
    }
}
