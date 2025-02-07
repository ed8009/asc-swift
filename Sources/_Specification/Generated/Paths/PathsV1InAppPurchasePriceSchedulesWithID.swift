// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.InAppPurchasePriceSchedules {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/inAppPurchasePriceSchedules/{id}`
        public let path: String

        public func get(fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]? = nil, include: [Include]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitAutomaticPrices: Int? = nil, limitManualPrices: Int? = nil) -> Request<_Specification.InAppPurchasePriceScheduleResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsInAppPurchasePriceSchedules, include, fieldsInAppPurchasePrices, fieldsTerritories, limitAutomaticPrices, limitManualPrices), id: "inAppPurchasePriceSchedules-get_instance")
        }

        private func makeGetQuery(_ fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]?, _ include: [Include]?, _ fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]?, _ fieldsTerritories: [FieldsTerritories]?, _ limitAutomaticPrices: Int?, _ limitManualPrices: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchasePriceSchedules, forKey: "fields[inAppPurchasePriceSchedules]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsInAppPurchasePrices, forKey: "fields[inAppPurchasePrices]")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            encoder.encode(limitAutomaticPrices, forKey: "limit[automaticPrices]")
            encoder.encode(limitManualPrices, forKey: "limit[manualPrices]")
            return encoder.items
        }

        public enum FieldsInAppPurchasePriceSchedules: String, Codable, CaseIterable {
            case automaticPrices
            case baseTerritory
            case inAppPurchase
            case manualPrices
        }

        public enum Include: String, Codable, CaseIterable {
            case automaticPrices
            case baseTerritory
            case inAppPurchase
            case manualPrices
        }

        public enum FieldsInAppPurchasePrices: String, Codable, CaseIterable {
            case endDate
            case inAppPurchasePricePoint
            case inAppPurchaseV2
            case manual
            case startDate
            case territory
        }

        public enum FieldsTerritories: String, Codable, CaseIterable {
            case currency
        }
    }
}
