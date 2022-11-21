// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var subscriptions: Subscriptions {
        Subscriptions(path: path + "/subscriptions")
    }

    public struct Subscriptions {
        /// Path: `/v1/subscriptions`
        public let path: String

        public func post(_ body: _Specification.SubscriptionCreateRequest) -> Request<_Specification.SubscriptionResponse> {
            Request(method: "POST", url: path, body: body, id: "subscriptions-create_instance")
        }
    }
}
