// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BetaAppLocalizations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/betaAppLocalizations/{id}`
        public let path: String

        public func get(fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil) -> Request<_Specification.BetaAppLocalizationResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaAppLocalizations, include, fieldsApps), id: "betaAppLocalizations-get_instance")
        }

        private func makeGetQuery(_ fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?, _ include: [Include]?, _ fieldsApps: [FieldsApps]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            return encoder.items
        }

        public enum FieldsBetaAppLocalizations: String, Codable, CaseIterable {
            case app
            case description
            case feedbackEmail
            case locale
            case marketingURL = "marketingUrl"
            case privacyPolicyURL = "privacyPolicyUrl"
            case tvOsPrivacyPolicy
        }

        public enum Include: String, Codable, CaseIterable {
            case app
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

        public func patch(_ body: _Specification.BetaAppLocalizationUpdateRequest) -> Request<_Specification.BetaAppLocalizationResponse> {
            Request(path: path, method: "PATCH", body: body, id: "betaAppLocalizations-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "betaAppLocalizations-delete_instance")
        }
    }
}
