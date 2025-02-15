// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionExperimentV2Response: Codable, Hashable {
    /// AppStoreVersionExperimentV2
    public var data: AppStoreVersionExperimentV2
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Hashable {
        case app(App)
        case appStoreVersion(AppStoreVersion)
        case appStoreVersionExperimentTreatment(AppStoreVersionExperimentTreatment)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(App.self) {
                self = .app(value)
            } else if let value = try? container.decode(AppStoreVersion.self) {
                self = .appStoreVersion(value)
            } else if let value = try? container.decode(AppStoreVersionExperimentTreatment.self) {
                self = .appStoreVersionExperimentTreatment(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (App, AppStoreVersion, AppStoreVersionExperimentTreatment)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .app(let value): try container.encode(value)
            case .appStoreVersion(let value): try container.encode(value)
            case .appStoreVersionExperimentTreatment(let value): try container.encode(value)
            }
        }
    }

    public init(data: AppStoreVersionExperimentV2, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
