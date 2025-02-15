// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.InAppPurchaseContents {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/inAppPurchaseContents/{id}`
        public let path: String

        public func get(fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents]? = nil, include: [Include]? = nil) -> Request<_Specification.InAppPurchaseContentResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsInAppPurchaseContents, include), id: "inAppPurchaseContents-get_instance")
        }

        private func makeGetQuery(_ fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchaseContents, forKey: "fields[inAppPurchaseContents]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsInAppPurchaseContents: String, Codable, CaseIterable {
            case fileName
            case fileSize
            case inAppPurchaseV2
            case lastModifiedDate
            case url
        }

        public enum Include: String, Codable, CaseIterable {
            case inAppPurchaseV2
        }
    }
}
