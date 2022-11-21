// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppClipDefaultExperiences.WithID {
    public var appClipDefaultExperienceLocalizations: AppClipDefaultExperienceLocalizations {
        AppClipDefaultExperienceLocalizations(path: path + "/appClipDefaultExperienceLocalizations")
    }

    public struct AppClipDefaultExperienceLocalizations {
        /// Path: `/v1/appClipDefaultExperiences/{id}/appClipDefaultExperienceLocalizations`
        public let path: String

        public func get(filterLocale: [String]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]? = nil, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppClipDefaultExperienceLocalizationsResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(filterLocale, fieldsAppClipDefaultExperiences, fieldsAppClipDefaultExperienceLocalizations, fieldsAppClipHeaderImages, limit, include), id: "appClipDefaultExperiences-appClipDefaultExperienceLocalizations-get_to_many_related")
        }

        private func makeGetQuery(_ filterLocale: [String]?, _ fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?, _ fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]?, _ fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterLocale, forKey: "filter[locale]")
            encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
            encoder.encode(fieldsAppClipDefaultExperienceLocalizations, forKey: "fields[appClipDefaultExperienceLocalizations]")
            encoder.encode(fieldsAppClipHeaderImages, forKey: "fields[appClipHeaderImages]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
            case action
            case appClip
            case appClipAppStoreReviewDetail
            case appClipDefaultExperienceLocalizations
            case appClipDefaultExperienceTemplate
            case releaseWithAppStoreVersion
        }

        public enum FieldsAppClipDefaultExperienceLocalizations: String, Codable, CaseIterable {
            case appClipDefaultExperience
            case appClipHeaderImage
            case locale
            case subtitle
        }

        public enum FieldsAppClipHeaderImages: String, Codable, CaseIterable {
            case appClipDefaultExperienceLocalization
            case assetDeliveryState
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum Include: String, Codable, CaseIterable {
            case appClipDefaultExperience
            case appClipHeaderImage
        }
    }
}
