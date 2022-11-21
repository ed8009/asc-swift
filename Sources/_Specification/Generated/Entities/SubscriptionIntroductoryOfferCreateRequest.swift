// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionIntroductoryOfferCreateRequest: Codable, Hashable {
    public var data: Data
    public var included: [SubscriptionPricePointInlineCreate]?

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case subscriptionIntroductoryOffers
        }

        public struct Attributes: Codable, Hashable {
            public var startDate: String?
            public var endDate: String?
            public var duration: SubscriptionOfferDuration
            public var offerMode: SubscriptionOfferMode
            public var numberOfPeriods: Int

            public init(startDate: String? = nil, endDate: String? = nil, duration: SubscriptionOfferDuration, offerMode: SubscriptionOfferMode, numberOfPeriods: Int) {
                self.startDate = startDate
                self.endDate = endDate
                self.duration = duration
                self.offerMode = offerMode
                self.numberOfPeriods = numberOfPeriods
            }
        }

        public struct Relationships: Codable, Hashable {
            public var subscription: Subscription
            public var territory: Territory?
            public var subscriptionPricePoint: SubscriptionPricePoint?

            public struct Subscription: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case subscriptions
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

            public struct Territory: Codable, Hashable {
                public var data: Data?

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case territories
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct SubscriptionPricePoint: Codable, Hashable {
                public var data: Data?

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case subscriptionPricePoints
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public init(subscription: Subscription, territory: Territory? = nil, subscriptionPricePoint: SubscriptionPricePoint? = nil) {
                self.subscription = subscription
                self.territory = territory
                self.subscriptionPricePoint = subscriptionPricePoint
            }
        }

        public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data, included: [SubscriptionPricePointInlineCreate]? = nil) {
        self.data = data
        self.included = included
    }
}
