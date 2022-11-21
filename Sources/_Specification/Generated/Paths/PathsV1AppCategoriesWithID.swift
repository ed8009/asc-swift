// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppCategories {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appCategories/{id}`
        public let path: String

        public func get(fieldsAppCategories: [FieldsAppCategories]? = nil, include: [Include]? = nil, limitSubcategories: Int? = nil) -> Request<_Specification.AppCategoryResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsAppCategories, include, limitSubcategories), id: "appCategories-get_instance")
        }

        private func makeGetQuery(_ fieldsAppCategories: [FieldsAppCategories]?, _ include: [Include]?, _ limitSubcategories: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitSubcategories, forKey: "limit[subcategories]")
            return encoder.items
        }

        public enum FieldsAppCategories: String, Codable, CaseIterable {
            case parent
            case platforms
            case subcategories
        }

        public enum Include: String, Codable, CaseIterable {
            case parent
            case subcategories
        }
    }
}
