// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppPricePoints {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appPricePoints/{id}`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func get(fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, include: [Include]? = nil, fieldsTerritories: [FieldsTerritories]? = nil) -> Request<_Specification.AppPricePointResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsAppPricePoints, include, fieldsTerritories), id: "appPricePoints-get_instance")
        }

        private func makeGetQuery(_ fieldsAppPricePoints: [FieldsAppPricePoints]?, _ include: [Include]?, _ fieldsTerritories: [FieldsTerritories]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            return encoder.items
        }

        public enum FieldsAppPricePoints: String, Codable, CaseIterable {
            case customerPrice
            case priceTier
            case proceeds
            case territory
        }

        public enum Include: String, Codable, CaseIterable {
            case priceTier
            case territory
        }

        public enum FieldsTerritories: String, Codable, CaseIterable {
            case currency
        }
    }
}
