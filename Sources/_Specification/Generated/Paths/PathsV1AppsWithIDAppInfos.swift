// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var appInfos: AppInfos {
        AppInfos(path: path + "/appInfos")
    }

    public struct AppInfos {
        /// Path: `/v1/apps/{id}/appInfos`
        public let path: String

        public func get(fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]? = nil, fieldsAppCategories: [FieldsAppCategories]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, limitAppInfoLocalizations: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppInfosResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAgeRatingDeclarations, fieldsAppInfos, fieldsAppInfoLocalizations, fieldsAppCategories, fieldsApps, limit, limitAppInfoLocalizations, include), id: "apps-appInfos-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?, _ fieldsAppInfos: [FieldsAppInfos]?, _ fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]?, _ fieldsAppCategories: [FieldsAppCategories]?, _ fieldsApps: [FieldsApps]?, _ limit: Int?, _ limitAppInfoLocalizations: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]")
            encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
            encoder.encode(fieldsAppInfoLocalizations, forKey: "fields[appInfoLocalizations]")
            encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitAppInfoLocalizations, forKey: "limit[appInfoLocalizations]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAgeRatingDeclarations: String, Codable, CaseIterable {
            case alcoholTobaccoOrDrugUseOrReferences
            case contests
            case gambling
            case gamblingAndContests
            case gamblingSimulated
            case horrorOrFearThemes
            case kidsAgeBand
            case matureOrSuggestiveThemes
            case medicalOrTreatmentInformation
            case profanityOrCrudeHumor
            case seventeenPlus
            case sexualContentGraphicAndNudity
            case sexualContentOrNudity
            case unrestrictedWebAccess
            case violenceCartoonOrFantasy
            case violenceRealistic
            case violenceRealisticProlongedGraphicOrSadistic
        }

        public enum FieldsAppInfos: String, Codable, CaseIterable {
            case ageRatingDeclaration
            case app
            case appInfoLocalizations
            case appStoreAgeRating
            case appStoreState
            case brazilAgeRating
            case brazilAgeRatingV2
            case kidsAgeBand
            case primaryCategory
            case primarySubcategoryOne
            case primarySubcategoryTwo
            case secondaryCategory
            case secondarySubcategoryOne
            case secondarySubcategoryTwo
        }

        public enum FieldsAppInfoLocalizations: String, Codable, CaseIterable {
            case appInfo
            case locale
            case name
            case privacyChoicesURL = "privacyChoicesUrl"
            case privacyPolicyText
            case privacyPolicyURL = "privacyPolicyUrl"
            case subtitle
        }

        public enum FieldsAppCategories: String, Codable, CaseIterable {
            case parent
            case platforms
            case subcategories
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

        public enum Include: String, Codable, CaseIterable {
            case ageRatingDeclaration
            case app
            case appInfoLocalizations
            case primaryCategory
            case primarySubcategoryOne
            case primarySubcategoryTwo
            case secondaryCategory
            case secondarySubcategoryOne
            case secondarySubcategoryTwo
        }
    }
}
