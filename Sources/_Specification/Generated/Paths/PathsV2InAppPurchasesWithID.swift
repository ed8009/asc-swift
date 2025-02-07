// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V2.InAppPurchases {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v2/inAppPurchases/{id}`
        public let path: String

        public func get(fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, include: [Include]? = nil, fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities]? = nil, fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]? = nil, fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]? = nil, fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]? = nil, fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents]? = nil, limitInAppPurchaseLocalizations: Int? = nil, limitPricePoints: Int? = nil) -> Request<_Specification.InAppPurchaseV2Response> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsInAppPurchases, include, fieldsInAppPurchaseAvailabilities, fieldsInAppPurchaseAppStoreReviewScreenshots, fieldsPromotedPurchases, fieldsInAppPurchasePricePoints, fieldsInAppPurchaseLocalizations, fieldsInAppPurchasePriceSchedules, fieldsInAppPurchaseContents, limitInAppPurchaseLocalizations, limitPricePoints), id: "inAppPurchases-get_instance")
        }

        private func makeGetQuery(_ fieldsInAppPurchases: [FieldsInAppPurchases]?, _ include: [Include]?, _ fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities]?, _ fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]?, _ fieldsPromotedPurchases: [FieldsPromotedPurchases]?, _ fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]?, _ fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]?, _ fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]?, _ fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents]?, _ limitInAppPurchaseLocalizations: Int?, _ limitPricePoints: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsInAppPurchaseAvailabilities, forKey: "fields[inAppPurchaseAvailabilities]")
            encoder.encode(fieldsInAppPurchaseAppStoreReviewScreenshots, forKey: "fields[inAppPurchaseAppStoreReviewScreenshots]")
            encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
            encoder.encode(fieldsInAppPurchasePricePoints, forKey: "fields[inAppPurchasePricePoints]")
            encoder.encode(fieldsInAppPurchaseLocalizations, forKey: "fields[inAppPurchaseLocalizations]")
            encoder.encode(fieldsInAppPurchasePriceSchedules, forKey: "fields[inAppPurchasePriceSchedules]")
            encoder.encode(fieldsInAppPurchaseContents, forKey: "fields[inAppPurchaseContents]")
            encoder.encode(limitInAppPurchaseLocalizations, forKey: "limit[inAppPurchaseLocalizations]")
            encoder.encode(limitPricePoints, forKey: "limit[pricePoints]")
            return encoder.items
        }

        public enum FieldsInAppPurchases: String, Codable, CaseIterable {
            case app
            case appStoreReviewScreenshot
            case availableInAllTerritories
            case content
            case contentHosting
            case familySharable
            case iapPriceSchedule
            case inAppPurchaseAvailability
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
            case appStoreReviewScreenshot
            case content
            case iapPriceSchedule
            case inAppPurchaseAvailability
            case inAppPurchaseLocalizations
            case pricePoints
            case promotedPurchase
        }

        public enum FieldsInAppPurchaseAvailabilities: String, Codable, CaseIterable {
            case availableInNewTerritories
            case availableTerritories
            case inAppPurchase
        }

        public enum FieldsInAppPurchaseAppStoreReviewScreenshots: String, Codable, CaseIterable {
            case assetDeliveryState
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case inAppPurchaseV2
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
            case app
            case enabled
            case inAppPurchaseV2
            case promotionImages
            case state
            case subscription
            case visibleForAllUsers
        }

        public enum FieldsInAppPurchasePricePoints: String, Codable, CaseIterable {
            case customerPrice
            case inAppPurchaseV2
            case priceTier
            case proceeds
            case territory
        }

        public enum FieldsInAppPurchaseLocalizations: String, Codable, CaseIterable {
            case description
            case inAppPurchaseV2
            case locale
            case name
            case state
        }

        public enum FieldsInAppPurchasePriceSchedules: String, Codable, CaseIterable {
            case automaticPrices
            case baseTerritory
            case inAppPurchase
            case manualPrices
        }

        public enum FieldsInAppPurchaseContents: String, Codable, CaseIterable {
            case fileName
            case fileSize
            case inAppPurchaseV2
            case lastModifiedDate
            case url
        }

        public func patch(_ body: _Specification.InAppPurchaseV2UpdateRequest) -> Request<_Specification.InAppPurchaseV2Response> {
            Request(path: path, method: "PATCH", body: body, id: "inAppPurchases-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "inAppPurchases-delete_instance")
        }
    }
}
