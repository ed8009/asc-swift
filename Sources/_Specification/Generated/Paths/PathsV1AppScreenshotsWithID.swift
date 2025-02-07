// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppScreenshots {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appScreenshots/{id}`
        public let path: String

        public func get(fieldsAppScreenshots: [FieldsAppScreenshots]? = nil, include: [Include]? = nil) -> Request<_Specification.AppScreenshotResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppScreenshots, include), id: "appScreenshots-get_instance")
        }

        private func makeGetQuery(_ fieldsAppScreenshots: [FieldsAppScreenshots]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppScreenshots, forKey: "fields[appScreenshots]")
            encoder.encode(include, forKey: "include")
            return encoder.items
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

        public func patch(_ body: _Specification.AppScreenshotUpdateRequest) -> Request<_Specification.AppScreenshotResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appScreenshots-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "appScreenshots-delete_instance")
        }
    }
}
