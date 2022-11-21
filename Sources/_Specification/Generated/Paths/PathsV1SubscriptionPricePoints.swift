// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var subscriptionPricePoints: SubscriptionPricePoints {
        SubscriptionPricePoints(path: path + "/subscriptionPricePoints")
    }

    public struct SubscriptionPricePoints {
        /// Path: `/v1/subscriptionPricePoints`
        public let path: String
    }
}
