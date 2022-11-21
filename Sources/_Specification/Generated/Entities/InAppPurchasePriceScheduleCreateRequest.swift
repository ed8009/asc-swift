// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchasePriceScheduleCreateRequest: Codable, Hashable {
    public var data: Data
    public var included: [InAppPurchasePriceInlineCreate]?

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case inAppPurchasePriceSchedules
        }

        public struct Relationships: Codable, Hashable {
            public var inAppPurchase: InAppPurchase
            public var manualPrices: ManualPrices

            public struct InAppPurchase: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case inAppPurchases
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct ManualPrices: Codable, Hashable {
                public var data: [Datum]

                public struct Datum: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case inAppPurchasePrices
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]) {
                    self.data = data
                }
            }

            public init(inAppPurchase: InAppPurchase, manualPrices: ManualPrices) {
                self.inAppPurchase = inAppPurchase
                self.manualPrices = manualPrices
            }
        }

        public init(type: `Type`, relationships: Relationships) {
            self.type = type
            self.relationships = relationships
        }
    }

    public init(data: Data, included: [InAppPurchasePriceInlineCreate]? = nil) {
        self.data = data
        self.included = included
    }
}
