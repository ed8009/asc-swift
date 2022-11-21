// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppScreenshotSets.WithID {
    public var appScreenshots: AppScreenshots {
        AppScreenshots(path: path + "/appScreenshots")
    }

    public struct AppScreenshots {
        /// Path: `/v1/appScreenshotSets/{id}/appScreenshots`
        public let path: String

        public func get(fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppScreenshotsResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsAppScreenshotSets, fieldsAppScreenshots, limit, include), id: "appScreenshotSets-appScreenshots-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?, _ fieldsAppScreenshots: [FieldsAppScreenshots]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
            encoder.encode(fieldsAppScreenshots, forKey: "fields[appScreenshots]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppScreenshotSets: String, Codable, CaseIterable {
            case appCustomProductPageLocalization
            case appScreenshots
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
            case screenshotDisplayType
        }

        public enum FieldsAppScreenshots: String, Codable, CaseIterable {
            case appScreenshotSet
            case assetDeliveryState
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum Include: String, Codable, CaseIterable {
            case appScreenshotSet
        }
    }
}
