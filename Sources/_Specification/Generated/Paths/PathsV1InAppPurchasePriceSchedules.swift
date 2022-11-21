// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var inAppPurchasePriceSchedules: InAppPurchasePriceSchedules {
        InAppPurchasePriceSchedules(path: path + "/inAppPurchasePriceSchedules")
    }

    public struct InAppPurchasePriceSchedules {
        /// Path: `/v1/inAppPurchasePriceSchedules`
        public let path: String

        public func post(_ body: _Specification.InAppPurchasePriceScheduleCreateRequest) -> Request<_Specification.InAppPurchasePriceScheduleResponse> {
            Request(method: "POST", url: path, body: body, id: "inAppPurchasePriceSchedules-create_instance")
        }
    }
}
