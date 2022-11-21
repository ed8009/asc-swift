// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppCategories.WithID.Relationships {
    public var subcategories: Subcategories {
        Subcategories(path: path + "/subcategories")
    }

    public struct Subcategories {
        /// Path: `/v1/appCategories/{id}/relationships/subcategories`
        public let path: String
    }
}
