// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var betaAppLocalizations: BetaAppLocalizations {
        BetaAppLocalizations(path: path + "/betaAppLocalizations")
    }

    public struct BetaAppLocalizations {
        /// Path: `/v1/apps/{id}/betaAppLocalizations`
        public let path: String

        public func get(fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, limit: Int? = nil) -> Request<_Specification.BetaAppLocalizationsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaAppLocalizations, limit), id: "apps-betaAppLocalizations-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsBetaAppLocalizations: String, Codable, CaseIterable {
            case app
            case description
            case feedbackEmail
            case locale
            case marketingURL = "marketingUrl"
            case privacyPolicyURL = "privacyPolicyUrl"
            case tvOsPrivacyPolicy
        }
    }
}
