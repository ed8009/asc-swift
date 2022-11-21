// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppPreviewSets.WithID.Relationships {
    public var appPreviews: AppPreviews {
        AppPreviews(path: path + "/appPreviews")
    }

    public struct AppPreviews {
        /// Path: `/v1/appPreviewSets/{id}/relationships/appPreviews`
        public let path: String

        public func get(limit: Int? = nil) -> Request<_Specification.AppPreviewSetAppPreviewsLinkagesResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(limit), id: "appPreviewSets-appPreviews-get_to_many_relationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public func patch(_ body: _Specification.AppPreviewSetAppPreviewsLinkagesRequest) -> Request<Void> {
            Request(method: "PATCH", url: path, body: body, id: "appPreviewSets-appPreviews-replace_to_many_relationship")
        }
    }
}
