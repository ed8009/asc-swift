// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.SubscriptionOfferCodeOneTimeUseCodes {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/subscriptionOfferCodeOneTimeUseCodes/{id}`
        public let path: String

        public func get(fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes]? = nil, include: [Include]? = nil, fieldsSubscriptionOfferCodeOneTimeUseCodeValues: [String]? = nil) -> Request<_Specification.SubscriptionOfferCodeOneTimeUseCodeResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsSubscriptionOfferCodeOneTimeUseCodes, include, fieldsSubscriptionOfferCodeOneTimeUseCodeValues), id: "subscriptionOfferCodeOneTimeUseCodes-get_instance")
        }

        private func makeGetQuery(_ fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes]?, _ include: [Include]?, _ fieldsSubscriptionOfferCodeOneTimeUseCodeValues: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsSubscriptionOfferCodeOneTimeUseCodes, forKey: "fields[subscriptionOfferCodeOneTimeUseCodes]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsSubscriptionOfferCodeOneTimeUseCodeValues, forKey: "fields[subscriptionOfferCodeOneTimeUseCodeValues]")
            return encoder.items
        }

        public enum FieldsSubscriptionOfferCodeOneTimeUseCodes: String, Codable, CaseIterable {
            case active
            case createdDate
            case expirationDate
            case numberOfCodes
            case offerCode
            case values
        }

        public enum Include: String, Codable, CaseIterable {
            case offerCode
        }

        public func patch(_ body: _Specification.SubscriptionOfferCodeOneTimeUseCodeUpdateRequest) -> Request<_Specification.SubscriptionOfferCodeOneTimeUseCodeResponse> {
            Request(path: path, method: "PATCH", body: body, id: "subscriptionOfferCodeOneTimeUseCodes-update_instance")
        }
    }
}
