// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppCustomProductPageLocalizations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appCustomProductPageLocalizations/{id}`
        public let path: String

        public func get(fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]? = nil, include: [Include]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, limitAppPreviewSets: Int? = nil, limitAppScreenshotSets: Int? = nil) -> Request<_Specification.AppCustomProductPageLocalizationResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsAppCustomProductPageLocalizations, include, fieldsAppScreenshotSets, fieldsAppPreviewSets, limitAppPreviewSets, limitAppScreenshotSets), id: "appCustomProductPageLocalizations-get_instance")
        }

        private func makeGetQuery(_ fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]?, _ include: [Include]?, _ fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?, _ fieldsAppPreviewSets: [FieldsAppPreviewSets]?, _ limitAppPreviewSets: Int?, _ limitAppScreenshotSets: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppCustomProductPageLocalizations, forKey: "fields[appCustomProductPageLocalizations]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
            encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
            encoder.encode(limitAppPreviewSets, forKey: "limit[appPreviewSets]")
            encoder.encode(limitAppScreenshotSets, forKey: "limit[appScreenshotSets]")
            return encoder.items
        }

        public enum FieldsAppCustomProductPageLocalizations: String, Codable, CaseIterable {
            case appCustomProductPageVersion
            case appPreviewSets
            case appScreenshotSets
            case locale
            case promotionalText
        }

        public enum Include: String, Codable, CaseIterable {
            case appCustomProductPageVersion
            case appPreviewSets
            case appScreenshotSets
        }

        public enum FieldsAppScreenshotSets: String, Codable, CaseIterable {
            case appCustomProductPageLocalization
            case appScreenshots
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
            case screenshotDisplayType
        }

        public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
            case appCustomProductPageLocalization
            case appPreviews
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
            case previewType
        }

        public func patch(_ body: _Specification.AppCustomProductPageLocalizationUpdateRequest) -> Request<_Specification.AppCustomProductPageLocalizationResponse> {
            Request(method: "PATCH", url: path, body: body, id: "appCustomProductPageLocalizations-update_instance")
        }

        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "appCustomProductPageLocalizations-delete_instance")
        }
    }
}
