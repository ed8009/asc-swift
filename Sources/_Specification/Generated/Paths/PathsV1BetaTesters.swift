// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var betaTesters: BetaTesters {
        BetaTesters(path: path + "/betaTesters")
    }

    public struct BetaTesters {
        /// Path: `/v1/betaTesters`
        public let path: String

        public func get(filterEmail: [String]? = nil, filterFirstName: [String]? = nil, filterInviteType: [FilterInviteType]? = nil, filterLastName: [String]? = nil, filterApps: [String]? = nil, filterBetaGroups: [String]? = nil, filterBuilds: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsBetaTesters: [FieldsBetaTesters]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, limitApps: Int? = nil, limitBetaGroups: Int? = nil, limitBuilds: Int? = nil) -> Request<_Specification.BetaTestersResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterEmail, filterFirstName, filterInviteType, filterLastName, filterApps, filterBetaGroups, filterBuilds, filterID, sort, fieldsBetaTesters, limit, include, fieldsApps, fieldsBuilds, fieldsBetaGroups, limitApps, limitBetaGroups, limitBuilds), id: "betaTesters-get_collection")
        }

        private func makeGetQuery(_ filterEmail: [String]?, _ filterFirstName: [String]?, _ filterInviteType: [FilterInviteType]?, _ filterLastName: [String]?, _ filterApps: [String]?, _ filterBetaGroups: [String]?, _ filterBuilds: [String]?, _ filterID: [String]?, _ sort: [Sort]?, _ fieldsBetaTesters: [FieldsBetaTesters]?, _ limit: Int?, _ include: [Include]?, _ fieldsApps: [FieldsApps]?, _ fieldsBuilds: [FieldsBuilds]?, _ fieldsBetaGroups: [FieldsBetaGroups]?, _ limitApps: Int?, _ limitBetaGroups: Int?, _ limitBuilds: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterEmail, forKey: "filter[email]")
            encoder.encode(filterFirstName, forKey: "filter[firstName]")
            encoder.encode(filterInviteType, forKey: "filter[inviteType]")
            encoder.encode(filterLastName, forKey: "filter[lastName]")
            encoder.encode(filterApps, forKey: "filter[apps]")
            encoder.encode(filterBetaGroups, forKey: "filter[betaGroups]")
            encoder.encode(filterBuilds, forKey: "filter[builds]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsBetaTesters, forKey: "fields[betaTesters]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
            encoder.encode(limitApps, forKey: "limit[apps]")
            encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
            encoder.encode(limitBuilds, forKey: "limit[builds]")
            return encoder.items
        }

        public enum FilterInviteType: String, Codable, CaseIterable {
            case email = "EMAIL"
            case publicLink = "PUBLIC_LINK"
        }

        public enum Sort: String, Codable, CaseIterable {
            case email
            case minusemail = "-email"
            case firstName
            case minusfirstName = "-firstName"
            case inviteType
            case minusinviteType = "-inviteType"
            case lastName
            case minuslastName = "-lastName"
        }

        public enum FieldsBetaTesters: String, Codable, CaseIterable {
            case apps
            case betaGroups
            case builds
            case email
            case firstName
            case inviteType
            case lastName
        }

        public enum Include: String, Codable, CaseIterable {
            case apps
            case betaGroups
            case builds
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

        public enum FieldsBuilds: String, Codable, CaseIterable {
            case app
            case appEncryptionDeclaration
            case appStoreVersion
            case betaAppReviewSubmission
            case betaBuildLocalizations
            case betaGroups
            case buildAudienceType
            case buildBetaDetail
            case buildBundles
            case computedMinMacOsVersion
            case diagnosticSignatures
            case expirationDate
            case expired
            case iconAssetToken
            case icons
            case individualTesters
            case lsMinimumSystemVersion
            case minOsVersion
            case perfPowerMetrics
            case preReleaseVersion
            case processingState
            case uploadedDate
            case usesNonExemptEncryption
            case version
        }

        public enum FieldsBetaGroups: String, Codable, CaseIterable {
            case app
            case betaTesters
            case builds
            case createdDate
            case feedbackEnabled
            case hasAccessToAllBuilds
            case iosBuildsAvailableForAppleSiliconMac
            case isInternalGroup
            case name
            case publicLink
            case publicLinkEnabled
            case publicLinkID = "publicLinkId"
            case publicLinkLimit
            case publicLinkLimitEnabled
        }

        public func post(_ body: _Specification.BetaTesterCreateRequest) -> Request<_Specification.BetaTesterResponse> {
            Request(path: path, method: "POST", body: body, id: "betaTesters-create_instance")
        }
    }
}
