// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var apps: Apps {
        Apps(path: path + "/apps")
    }

    public struct Apps {
        /// Path: `/v1/apps`
        public let path: String

        public func get(filterAppStoreVersionsAppStoreState: [FilterAppStoreVersionsAppStoreState]? = nil, filterAppStoreVersionsPlatform: [FilterAppStoreVersionsPlatform]? = nil, filterBundleID: [String]? = nil, filterName: [String]? = nil, filterSku: [String]? = nil, filterAppStoreVersions: [String]? = nil, filterID: [String]? = nil, isExistsGameCenterEnabledVersions: Bool? = nil, sort: [Sort]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsCustomerReviews: [FieldsCustomerReviews]? = nil, fieldsAppEvents: [FieldsAppEvents]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsAppPrices: [FieldsAppPrices]? = nil, fieldsAppPreOrders: [FieldsAppPreOrders]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]? = nil, fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]? = nil, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics]? = nil, limitAppClips: Int? = nil, limitAppCustomProductPages: Int? = nil, limitAppEvents: Int? = nil, limitAppInfos: Int? = nil, limitAppStoreVersions: Int? = nil, limitAvailableTerritories: Int? = nil, limitBetaAppLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuilds: Int? = nil, limitGameCenterEnabledVersions: Int? = nil, limitInAppPurchases: Int? = nil, limitInAppPurchasesV2: Int? = nil, limitPreReleaseVersions: Int? = nil, limitPrices: Int? = nil, limitPromotedPurchases: Int? = nil, limitReviewSubmissions: Int? = nil, limitSubscriptionGroups: Int? = nil) -> Request<_Specification.AppsResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(filterAppStoreVersionsAppStoreState, filterAppStoreVersionsPlatform, filterBundleID, filterName, filterSku, filterAppStoreVersions, filterID, isExistsGameCenterEnabledVersions, sort, fieldsApps, limit, include, fieldsBetaAppReviewDetails, fieldsCiProducts, fieldsReviewSubmissions, fieldsBetaGroups, fieldsPromotedPurchases, fieldsCustomerReviews, fieldsAppEvents, fieldsBuilds, fieldsBetaLicenseAgreements, fieldsAppClips, fieldsAppInfos, fieldsBetaAppLocalizations, fieldsAppPricePoints, fieldsInAppPurchases, fieldsPreReleaseVersions, fieldsSubscriptionGroups, fieldsAppPrices, fieldsAppPreOrders, fieldsGameCenterEnabledVersions, fieldsSubscriptionGracePeriods, fieldsEndUserLicenseAgreements, fieldsAppStoreVersions, fieldsAppCustomProductPages, fieldsTerritories, fieldsPerfPowerMetrics, limitAppClips, limitAppCustomProductPages, limitAppEvents, limitAppInfos, limitAppStoreVersions, limitAvailableTerritories, limitBetaAppLocalizations, limitBetaGroups, limitBuilds, limitGameCenterEnabledVersions, limitInAppPurchases, limitInAppPurchasesV2, limitPreReleaseVersions, limitPrices, limitPromotedPurchases, limitReviewSubmissions, limitSubscriptionGroups), id: "apps-get_collection")
        }

        private func makeGetQuery(_ filterAppStoreVersionsAppStoreState: [FilterAppStoreVersionsAppStoreState]?, _ filterAppStoreVersionsPlatform: [FilterAppStoreVersionsPlatform]?, _ filterBundleID: [String]?, _ filterName: [String]?, _ filterSku: [String]?, _ filterAppStoreVersions: [String]?, _ filterID: [String]?, _ isExistsGameCenterEnabledVersions: Bool?, _ sort: [Sort]?, _ fieldsApps: [FieldsApps]?, _ limit: Int?, _ include: [Include]?, _ fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]?, _ fieldsCiProducts: [FieldsCiProducts]?, _ fieldsReviewSubmissions: [FieldsReviewSubmissions]?, _ fieldsBetaGroups: [FieldsBetaGroups]?, _ fieldsPromotedPurchases: [FieldsPromotedPurchases]?, _ fieldsCustomerReviews: [FieldsCustomerReviews]?, _ fieldsAppEvents: [FieldsAppEvents]?, _ fieldsBuilds: [FieldsBuilds]?, _ fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]?, _ fieldsAppClips: [FieldsAppClips]?, _ fieldsAppInfos: [FieldsAppInfos]?, _ fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?, _ fieldsAppPricePoints: [FieldsAppPricePoints]?, _ fieldsInAppPurchases: [FieldsInAppPurchases]?, _ fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?, _ fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?, _ fieldsAppPrices: [FieldsAppPrices]?, _ fieldsAppPreOrders: [FieldsAppPreOrders]?, _ fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]?, _ fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]?, _ fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]?, _ fieldsAppStoreVersions: [FieldsAppStoreVersions]?, _ fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?, _ fieldsTerritories: [FieldsTerritories]?, _ fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics]?, _ limitAppClips: Int?, _ limitAppCustomProductPages: Int?, _ limitAppEvents: Int?, _ limitAppInfos: Int?, _ limitAppStoreVersions: Int?, _ limitAvailableTerritories: Int?, _ limitBetaAppLocalizations: Int?, _ limitBetaGroups: Int?, _ limitBuilds: Int?, _ limitGameCenterEnabledVersions: Int?, _ limitInAppPurchases: Int?, _ limitInAppPurchasesV2: Int?, _ limitPreReleaseVersions: Int?, _ limitPrices: Int?, _ limitPromotedPurchases: Int?, _ limitReviewSubmissions: Int?, _ limitSubscriptionGroups: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterAppStoreVersionsAppStoreState, forKey: "filter[appStoreVersions.appStoreState]")
            encoder.encode(filterAppStoreVersionsPlatform, forKey: "filter[appStoreVersions.platform]")
            encoder.encode(filterBundleID, forKey: "filter[bundleId]")
            encoder.encode(filterName, forKey: "filter[name]")
            encoder.encode(filterSku, forKey: "filter[sku]")
            encoder.encode(filterAppStoreVersions, forKey: "filter[appStoreVersions]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(isExistsGameCenterEnabledVersions, forKey: "exists[gameCenterEnabledVersions]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsBetaAppReviewDetails, forKey: "fields[betaAppReviewDetails]")
            encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
            encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
            encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
            encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
            encoder.encode(fieldsCustomerReviews, forKey: "fields[customerReviews]")
            encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            encoder.encode(fieldsBetaLicenseAgreements, forKey: "fields[betaLicenseAgreements]")
            encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
            encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
            encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]")
            encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
            encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
            encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
            encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
            encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
            encoder.encode(fieldsAppPreOrders, forKey: "fields[appPreOrders]")
            encoder.encode(fieldsGameCenterEnabledVersions, forKey: "fields[gameCenterEnabledVersions]")
            encoder.encode(fieldsSubscriptionGracePeriods, forKey: "fields[subscriptionGracePeriods]")
            encoder.encode(fieldsEndUserLicenseAgreements, forKey: "fields[endUserLicenseAgreements]")
            encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
            encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            encoder.encode(fieldsPerfPowerMetrics, forKey: "fields[perfPowerMetrics]")
            encoder.encode(limitAppClips, forKey: "limit[appClips]")
            encoder.encode(limitAppCustomProductPages, forKey: "limit[appCustomProductPages]")
            encoder.encode(limitAppEvents, forKey: "limit[appEvents]")
            encoder.encode(limitAppInfos, forKey: "limit[appInfos]")
            encoder.encode(limitAppStoreVersions, forKey: "limit[appStoreVersions]")
            encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
            encoder.encode(limitBetaAppLocalizations, forKey: "limit[betaAppLocalizations]")
            encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
            encoder.encode(limitBuilds, forKey: "limit[builds]")
            encoder.encode(limitGameCenterEnabledVersions, forKey: "limit[gameCenterEnabledVersions]")
            encoder.encode(limitInAppPurchases, forKey: "limit[inAppPurchases]")
            encoder.encode(limitInAppPurchasesV2, forKey: "limit[inAppPurchasesV2]")
            encoder.encode(limitPreReleaseVersions, forKey: "limit[preReleaseVersions]")
            encoder.encode(limitPrices, forKey: "limit[prices]")
            encoder.encode(limitPromotedPurchases, forKey: "limit[promotedPurchases]")
            encoder.encode(limitReviewSubmissions, forKey: "limit[reviewSubmissions]")
            encoder.encode(limitSubscriptionGroups, forKey: "limit[subscriptionGroups]")
            return encoder.items
        }

        public enum FilterAppStoreVersionsAppStoreState: String, Codable, CaseIterable {
            case accepted = "ACCEPTED"
            case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
            case developerRejected = "DEVELOPER_REJECTED"
            case inReview = "IN_REVIEW"
            case invalidBinary = "INVALID_BINARY"
            case metadataRejected = "METADATA_REJECTED"
            case pendingAppleRelease = "PENDING_APPLE_RELEASE"
            case pendingContract = "PENDING_CONTRACT"
            case pendingDeveloperRelease = "PENDING_DEVELOPER_RELEASE"
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case preorderReadyForSale = "PREORDER_READY_FOR_SALE"
            case processingForAppStore = "PROCESSING_FOR_APP_STORE"
            case readyForReview = "READY_FOR_REVIEW"
            case readyForSale = "READY_FOR_SALE"
            case rejected = "REJECTED"
            case removedFromSale = "REMOVED_FROM_SALE"
            case waitingForExportCompliance = "WAITING_FOR_EXPORT_COMPLIANCE"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case replacedWithNewVersion = "REPLACED_WITH_NEW_VERSION"
        }

        public enum FilterAppStoreVersionsPlatform: String, Codable, CaseIterable {
            case ios = "IOS"
            case macOs = "MAC_OS"
            case tvOs = "TV_OS"
        }

        public enum Sort: String, Codable, CaseIterable {
            case bundleID = "bundleId"
            case minusbundleID = "-bundleId"
            case name
            case minusname = "-name"
            case sku
            case minussku = "-sku"
        }

        public enum FieldsApps: String, Codable, CaseIterable {
            case appClips
            case appCustomProductPages
            case appEvents
            case appInfos
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
            case appClips
            case appCustomProductPages
            case appEvents
            case appInfos
            case appStoreVersions
            case availableTerritories
            case betaAppLocalizations
            case betaAppReviewDetail
            case betaGroups
            case betaLicenseAgreement
            case builds
            case ciProduct
            case endUserLicenseAgreement
            case gameCenterEnabledVersions
            case inAppPurchases
            case inAppPurchasesV2
            case preOrder
            case preReleaseVersions
            case prices
            case promotedPurchases
            case reviewSubmissions
            case subscriptionGracePeriod
            case subscriptionGroups
        }

        public enum FieldsBetaAppReviewDetails: String, Codable, CaseIterable {
            case app
            case contactEmail
            case contactFirstName
            case contactLastName
            case contactPhone
            case demoAccountName
            case demoAccountPassword
            case demoAccountRequired
            case notes
        }

        public enum FieldsCiProducts: String, Codable, CaseIterable {
            case additionalRepositories
            case app
            case buildRuns
            case bundleID = "bundleId"
            case createdDate
            case name
            case primaryRepositories
            case productType
            case workflows
        }

        public enum FieldsReviewSubmissions: String, Codable, CaseIterable {
            case app
            case appStoreVersionForReview
            case canceled
            case items
            case platform
            case state
            case submitted
            case submittedDate
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

        public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
            case app
            case enabled
            case inAppPurchaseV2
            case promotionImages
            case state
            case subscription
            case visibleForAllUsers
        }

        public enum FieldsCustomerReviews: String, Codable, CaseIterable {
            case body
            case createdDate
            case rating
            case response
            case reviewerNickname
            case territory
            case title
        }

        public enum FieldsAppEvents: String, Codable, CaseIterable {
            case app
            case archivedTerritorySchedules
            case badge
            case deepLink
            case eventState
            case localizations
            case primaryLocale
            case priority
            case purchaseRequirement
            case purpose
            case referenceName
            case territorySchedules
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

        public enum FieldsBetaLicenseAgreements: String, Codable, CaseIterable {
            case agreementText
            case app
        }

        public enum FieldsAppClips: String, Codable, CaseIterable {
            case app
            case appClipAdvancedExperiences
            case appClipDefaultExperiences
            case bundleID = "bundleId"
        }

        public enum FieldsAppInfos: String, Codable, CaseIterable {
            case ageRatingDeclaration
            case app
            case appInfoLocalizations
            case appStoreAgeRating
            case appStoreState
            case brazilAgeRating
            case kidsAgeBand
            case primaryCategory
            case primarySubcategoryOne
            case primarySubcategoryTwo
            case secondaryCategory
            case secondarySubcategoryOne
            case secondarySubcategoryTwo
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

        public enum FieldsAppPricePoints: String, Codable, CaseIterable {
            case app
            case customerPrice
            case priceTier
            case proceeds
            case territory
        }

        public enum FieldsInAppPurchases: String, Codable, CaseIterable {
            case apps
            case inAppPurchaseType
            case productID = "productId"
            case referenceName
            case state
        }

        public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
            case app
            case builds
            case platform
            case version
        }

        public enum FieldsSubscriptionGroups: String, Codable, CaseIterable {
            case app
            case referenceName
            case subscriptionGroupLocalizations
            case subscriptions
        }

        public enum FieldsAppPrices: String, Codable, CaseIterable {
            case app
            case priceTier
        }

        public enum FieldsAppPreOrders: String, Codable, CaseIterable {
            case app
            case appReleaseDate
            case preOrderAvailableDate
        }

        public enum FieldsGameCenterEnabledVersions: String, Codable, CaseIterable {
            case app
            case compatibleVersions
            case iconAsset
            case platform
            case versionString
        }

        public enum FieldsSubscriptionGracePeriods: String, Codable, CaseIterable {
            case app
            case optIn
        }

        public enum FieldsEndUserLicenseAgreements: String, Codable, CaseIterable {
            case agreementText
            case app
            case territories
        }

        public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
            case ageRatingDeclaration
            case app
            case appClipDefaultExperience
            case appStoreReviewDetail
            case appStoreState
            case appStoreVersionExperiments
            case appStoreVersionLocalizations
            case appStoreVersionPhasedRelease
            case appStoreVersionSubmission
            case build
            case copyright
            case createdDate
            case customerReviews
            case downloadable
            case earliestReleaseDate
            case platform
            case releaseType
            case routingAppCoverage
            case versionString
        }

        public enum FieldsAppCustomProductPages: String, Codable, CaseIterable {
            case app
            case appCustomProductPageVersions
            case appStoreVersionTemplate
            case customProductPageTemplate
            case name
            case url
            case visible
        }

        public enum FieldsTerritories: String, Codable, CaseIterable {
            case currency
        }

        public enum FieldsPerfPowerMetrics: String, Codable, CaseIterable {
            case deviceType
            case metricType
            case platform
        }
    }
}
