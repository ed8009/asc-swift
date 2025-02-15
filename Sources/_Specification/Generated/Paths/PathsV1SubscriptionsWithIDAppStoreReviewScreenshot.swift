// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Subscriptions.WithID {
    public var appStoreReviewScreenshot: AppStoreReviewScreenshot {
        AppStoreReviewScreenshot(path: path + "/appStoreReviewScreenshot")
    }

    public struct AppStoreReviewScreenshot {
        /// Path: `/v1/subscriptions/{id}/appStoreReviewScreenshot`
        public let path: String

        public func get(fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, include: [Include]? = nil) -> Request<_Specification.SubscriptionAppStoreReviewScreenshotResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsSubscriptionAppStoreReviewScreenshots, fieldsSubscriptions, include), id: "subscriptions-appStoreReviewScreenshot-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots]?, _ fieldsSubscriptions: [FieldsSubscriptions]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsSubscriptionAppStoreReviewScreenshots, forKey: "fields[subscriptionAppStoreReviewScreenshots]")
            encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsSubscriptionAppStoreReviewScreenshots: String, Codable, CaseIterable {
            case assetDeliveryState
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case subscription
            case uploadOperations
            case uploaded
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

        public enum Include: String, Codable, CaseIterable {
            case subscription
        }
    }
}
