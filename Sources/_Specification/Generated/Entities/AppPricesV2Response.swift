// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppPricesV2Response: Codable, Hashable {
    public var data: [AppPriceV2]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Hashable {
        case appPricePointV3(AppPricePointV3)
        case territory(Territory)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppPricePointV3.self) {
                self = .appPricePointV3(value)
            } else if let value = try? container.decode(Territory.self) {
                self = .territory(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppPricePointV3, Territory)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appPricePointV3(let value): try container.encode(value)
            case .territory(let value): try container.encode(value)
            }
        }
    }

    public init(data: [AppPriceV2], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
