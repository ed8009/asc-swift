// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BetaAppReviewDetails.WithID.Relationships {
    public var app: App {
        App(path: path + "/app")
    }

    public struct App {
        /// Path: `/v1/betaAppReviewDetails/{id}/relationships/app`
        public let path: String
    }
}
