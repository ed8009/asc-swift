// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var prices: Prices {
        Prices(path: path + "/prices")
    }

    public struct Prices {
        /// Path: `/v1/apps/{id}/prices`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func get(fieldsAppPriceTiers: [FieldsAppPriceTiers]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsAppPrices: [FieldsAppPrices]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppPricesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppPriceTiers, fieldsApps, fieldsAppPrices, limit, include), id: "apps-prices-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsAppPriceTiers: [FieldsAppPriceTiers]?, _ fieldsApps: [FieldsApps]?, _ fieldsAppPrices: [FieldsAppPrices]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppPriceTiers, forKey: "fields[appPriceTiers]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppPriceTiers: String, Codable, CaseIterable {
            case pricePoints
        }

        public enum FieldsApps: String, Codable, CaseIterable {
            case appAvailability
            case appClips
            case appCustomProductPages
            case appEvents
            case appInfos
            case appPricePoints
            case appPriceSchedule
            case appStoreVersionExperimentsV2
            case appStoreVersions
            case availableInNewTerritories
            case availableTerritories
            case betaAppLocalizations
            case betaAppReviewDetail
            case betaGroups
            case betaLicenseAgreement
            case betaTesters
            case builds
            case bundleID = "bundleId"
            case ciProduct
            case contentRightsDeclaration
            case customerReviews
            case endUserLicenseAgreement
            case gameCenterEnabledVersions
            case inAppPurchases
            case inAppPurchasesV2
            case isOrEverWasMadeForKids
            case name
            case perfPowerMetrics
            case preOrder
            case preReleaseVersions
            case pricePoints
            case prices
            case primaryLocale
            case promotedPurchases
            case reviewSubmissions
            case sku
            case subscriptionGracePeriod
            case subscriptionGroups
            case subscriptionStatusURL = "subscriptionStatusUrl"
            case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
            case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
            case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
        }

        public enum FieldsAppPrices: String, Codable, CaseIterable {
            case app
            case priceTier
        }

        public enum Include: String, Codable, CaseIterable {
            case app
            case priceTier
        }
    }
}
