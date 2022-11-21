// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersionLocalizations.WithID {
    public var appPreviewSets: AppPreviewSets {
        AppPreviewSets(path: path + "/appPreviewSets")
    }

    public struct AppPreviewSets {
        /// Path: `/v1/appStoreVersionLocalizations/{id}/appPreviewSets`
        public let path: String

        public func get(filterPreviewType: [FilterPreviewType]? = nil, filterAppCustomProductPageLocalization: [String]? = nil, filterAppStoreVersionExperimentTreatmentLocalization: [String]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]? = nil, fieldsAppPreviews: [FieldsAppPreviews]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, limit: Int? = nil, limitAppPreviews: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppPreviewSetsResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(filterPreviewType, filterAppCustomProductPageLocalization, filterAppStoreVersionExperimentTreatmentLocalization, fieldsAppCustomProductPageLocalizations, fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppPreviews, fieldsAppPreviewSets, fieldsAppStoreVersionLocalizations, limit, limitAppPreviews, include), id: "appStoreVersionLocalizations-appPreviewSets-get_to_many_related")
        }

        private func makeGetQuery(_ filterPreviewType: [FilterPreviewType]?, _ filterAppCustomProductPageLocalization: [String]?, _ filterAppStoreVersionExperimentTreatmentLocalization: [String]?, _ fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]?, _ fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]?, _ fieldsAppPreviews: [FieldsAppPreviews]?, _ fieldsAppPreviewSets: [FieldsAppPreviewSets]?, _ fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?, _ limit: Int?, _ limitAppPreviews: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterPreviewType, forKey: "filter[previewType]")
            encoder.encode(filterAppCustomProductPageLocalization, forKey: "filter[appCustomProductPageLocalization]")
            encoder.encode(filterAppStoreVersionExperimentTreatmentLocalization, forKey: "filter[appStoreVersionExperimentTreatmentLocalization]")
            encoder.encode(fieldsAppCustomProductPageLocalizations, forKey: "fields[appCustomProductPageLocalizations]")
            encoder.encode(fieldsAppStoreVersionExperimentTreatmentLocalizations, forKey: "fields[appStoreVersionExperimentTreatmentLocalizations]")
            encoder.encode(fieldsAppPreviews, forKey: "fields[appPreviews]")
            encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
            encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitAppPreviews, forKey: "limit[appPreviews]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FilterPreviewType: String, Codable, CaseIterable {
            case iphone67 = "IPHONE_67"
            case iphone61 = "IPHONE_61"
            case iphone65 = "IPHONE_65"
            case iphone58 = "IPHONE_58"
            case iphone55 = "IPHONE_55"
            case iphone47 = "IPHONE_47"
            case iphone40 = "IPHONE_40"
            case iphone35 = "IPHONE_35"
            case ipadPro3gen129 = "IPAD_PRO_3GEN_129"
            case ipadPro3gen11 = "IPAD_PRO_3GEN_11"
            case ipadPro129 = "IPAD_PRO_129"
            case ipad105 = "IPAD_105"
            case ipad97 = "IPAD_97"
            case desktop = "DESKTOP"
            case appleTv = "APPLE_TV"
        }

        public enum FieldsAppCustomProductPageLocalizations: String, Codable, CaseIterable {
            case appCustomProductPageVersion
            case appPreviewSets
            case appScreenshotSets
            case locale
            case promotionalText
        }

        public enum FieldsAppStoreVersionExperimentTreatmentLocalizations: String, Codable, CaseIterable {
            case appPreviewSets
            case appScreenshotSets
            case appStoreVersionExperimentTreatment
            case locale
        }

        public enum FieldsAppPreviews: String, Codable, CaseIterable {
            case appPreviewSet
            case assetDeliveryState
            case fileName
            case fileSize
            case mimeType
            case previewFrameTimeCode
            case previewImage
            case sourceFileChecksum
            case uploadOperations
            case uploaded
            case videoURL = "videoUrl"
        }

        public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
            case appCustomProductPageLocalization
            case appPreviews
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
            case previewType
        }

        public enum FieldsAppStoreVersionLocalizations: String, Codable, CaseIterable {
            case appPreviewSets
            case appScreenshotSets
            case appStoreVersion
            case description
            case keywords
            case locale
            case marketingURL = "marketingUrl"
            case promotionalText
            case supportURL = "supportUrl"
            case whatsNew
        }

        public enum Include: String, Codable, CaseIterable {
            case appCustomProductPageLocalization
            case appPreviews
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
        }
    }
}
