// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppPriceSchedules.WithID.Relationships {
    public var manualPrices: ManualPrices {
        ManualPrices(path: path + "/manualPrices")
    }

    public struct ManualPrices {
        /// Path: `/v1/appPriceSchedules/{id}/relationships/manualPrices`
        public let path: String
    }
}
