// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppPricePoints.WithID {
    public var territory: Territory {
        Territory(path: path + "/territory")
    }

    public struct Territory {
        /// Path: `/v1/appPricePoints/{id}/territory`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func get(fieldsTerritories: [FieldsTerritories]? = nil) -> Request<_Specification.TerritoryResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsTerritories), id: "appPricePoints-territory-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsTerritories: [FieldsTerritories]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsTerritories, forKey: "fields[territories]", explode: false)
            return encoder.items
        }

        public enum FieldsTerritories: String, Codable, CaseIterable {
            case currency
        }
    }
}
