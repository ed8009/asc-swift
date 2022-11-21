// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipAdvancedExperienceUpdateRequest: Codable, Hashable {
    public var data: Data
    public var included: [AppClipAdvancedExperienceLocalizationInlineCreate]?

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?
        public var relationships: Relationships?

        public enum `Type`: String, Codable, CaseIterable {
            case appClipAdvancedExperiences
        }

        public struct Attributes: Codable, Hashable {
            public var action: AppClipAction?
            public var isPoweredBy: Bool?
            public var place: Place?
            public var businessCategory: BusinessCategory?
            public var defaultLanguage: AppClipAdvancedExperienceLanguage?
            public var isRemoved: Bool?

            public struct Place: Codable, Hashable {
                public var placeID: String?
                public var names: [String]?
                public var mainAddress: MainAddress?
                public var displayPoint: DisplayPoint?
                public var mapAction: MapAction?
                public var relationship: Relationship?
                public var phoneNumber: PhoneNumber?
                public var homePage: String?
                public var categories: [String]?

                public struct MainAddress: Codable, Hashable {
                    public var fullAddress: String?
                    public var structuredAddress: StructuredAddress?

                    public struct StructuredAddress: Codable, Hashable {
                        public var streetAddress: [String]?
                        public var floor: String?
                        public var neighborhood: String?
                        public var locality: String?
                        public var stateProvince: String?
                        public var postalCode: String?
                        public var countryCode: String?

                        public init(streetAddress: [String]? = nil, floor: String? = nil, neighborhood: String? = nil, locality: String? = nil, stateProvince: String? = nil, postalCode: String? = nil, countryCode: String? = nil) {
                            self.streetAddress = streetAddress
                            self.floor = floor
                            self.neighborhood = neighborhood
                            self.locality = locality
                            self.stateProvince = stateProvince
                            self.postalCode = postalCode
                            self.countryCode = countryCode
                        }
                    }

                    public init(fullAddress: String? = nil, structuredAddress: StructuredAddress? = nil) {
                        self.fullAddress = fullAddress
                        self.structuredAddress = structuredAddress
                    }
                }

                public struct DisplayPoint: Codable, Hashable {
                    public var coordinates: Coordinates?
                    public var source: Source?

                    public struct Coordinates: Codable, Hashable {
                        public var latitude: Double?
                        public var longitude: Double?

                        public init(latitude: Double? = nil, longitude: Double? = nil) {
                            self.latitude = latitude
                            self.longitude = longitude
                        }
                    }

                    public enum Source: String, Codable, CaseIterable {
                        case calculated = "CALCULATED"
                        case manuallyPlaced = "MANUALLY_PLACED"
                    }

                    public init(coordinates: Coordinates? = nil, source: Source? = nil) {
                        self.coordinates = coordinates
                        self.source = source
                    }
                }

                public enum MapAction: String, Codable, CaseIterable {
                    case buyTickets = "BUY_TICKETS"
                    case viewAvailability = "VIEW_AVAILABILITY"
                    case viewPricing = "VIEW_PRICING"
                    case hotelBookRoom = "HOTEL_BOOK_ROOM"
                    case parkingReserveParking = "PARKING_RESERVE_PARKING"
                    case restaurantJoinWaitlist = "RESTAURANT_JOIN_WAITLIST"
                    case restaurantOrderDelivery = "RESTAURANT_ORDER_DELIVERY"
                    case restaurantOrderFood = "RESTAURANT_ORDER_FOOD"
                    case restaurantOrderTakeout = "RESTAURANT_ORDER_TAKEOUT"
                    case restaurantReservation = "RESTAURANT_RESERVATION"
                    case scheduleAppointment = "SCHEDULE_APPOINTMENT"
                    case restaurantViewMenu = "RESTAURANT_VIEW_MENU"
                    case theaterNowPlaying = "THEATER_NOW_PLAYING"
                }

                public enum Relationship: String, Codable, CaseIterable {
                    case owner = "OWNER"
                    case authorized = "AUTHORIZED"
                    case other = "OTHER"
                }

                public struct PhoneNumber: Codable, Hashable {
                    public var number: String?
                    public var type: `Type`?
                    public var intent: String?

                    public enum `Type`: String, Codable, CaseIterable {
                        case fax = "FAX"
                        case landline = "LANDLINE"
                        case mobile = "MOBILE"
                        case tollfree = "TOLLFREE"
                    }

                    public init(number: String? = nil, type: `Type`? = nil, intent: String? = nil) {
                        self.number = number
                        self.type = type
                        self.intent = intent
                    }
                }

                public init(placeID: String? = nil, names: [String]? = nil, mainAddress: MainAddress? = nil, displayPoint: DisplayPoint? = nil, mapAction: MapAction? = nil, relationship: Relationship? = nil, phoneNumber: PhoneNumber? = nil, homePage: String? = nil, categories: [String]? = nil) {
                    self.placeID = placeID
                    self.names = names
                    self.mainAddress = mainAddress
                    self.displayPoint = displayPoint
                    self.mapAction = mapAction
                    self.relationship = relationship
                    self.phoneNumber = phoneNumber
                    self.homePage = homePage
                    self.categories = categories
                }

                private enum CodingKeys: String, CodingKey {
                    case placeID = "placeId"
                    case names
                    case mainAddress
                    case displayPoint
                    case mapAction
                    case relationship
                    case phoneNumber
                    case homePage
                    case categories
                }
            }

            public enum BusinessCategory: String, Codable, CaseIterable {
                case automotive = "AUTOMOTIVE"
                case beauty = "BEAUTY"
                case bikes = "BIKES"
                case books = "BOOKS"
                case casino = "CASINO"
                case education = "EDUCATION"
                case educationJapan = "EDUCATION_JAPAN"
                case entertainment = "ENTERTAINMENT"
                case evCharger = "EV_CHARGER"
                case financialUsd = "FINANCIAL_USD"
                case financialCny = "FINANCIAL_CNY"
                case financialGbp = "FINANCIAL_GBP"
                case financialJpy = "FINANCIAL_JPY"
                case financialEur = "FINANCIAL_EUR"
                case fitness = "FITNESS"
                case foodAndDrink = "FOOD_AND_DRINK"
                case gas = "GAS"
                case grocery = "GROCERY"
                case healthAndMedical = "HEALTH_AND_MEDICAL"
                case hotelAndTravel = "HOTEL_AND_TRAVEL"
                case music = "MUSIC"
                case parking = "PARKING"
                case petServices = "PET_SERVICES"
                case professionalServices = "PROFESSIONAL_SERVICES"
                case shopping = "SHOPPING"
                case ticketing = "TICKETING"
                case transit = "TRANSIT"
            }

            public init(action: AppClipAction? = nil, isPoweredBy: Bool? = nil, place: Place? = nil, businessCategory: BusinessCategory? = nil, defaultLanguage: AppClipAdvancedExperienceLanguage? = nil, isRemoved: Bool? = nil) {
                self.action = action
                self.isPoweredBy = isPoweredBy
                self.place = place
                self.businessCategory = businessCategory
                self.defaultLanguage = defaultLanguage
                self.isRemoved = isRemoved
            }

            private enum CodingKeys: String, CodingKey {
                case action
                case isPoweredBy
                case place
                case businessCategory
                case defaultLanguage
                case isRemoved = "removed"
            }
        }

        public struct Relationships: Codable, Hashable {
            public var appClip: AppClip?
            public var headerImage: HeaderImage?
            public var localizations: Localizations?

            public struct AppClip: Codable, Hashable {
                public var data: Data?

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appClips
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

            public struct HeaderImage: Codable, Hashable {
                public var data: Data?

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appClipAdvancedExperienceImages
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

            public struct Localizations: Codable, Hashable {
                public var data: [Datum]?

                public struct Datum: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appClipAdvancedExperienceLocalizations
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]? = nil) {
                    self.data = data
                }
            }

            public init(appClip: AppClip? = nil, headerImage: HeaderImage? = nil, localizations: Localizations? = nil) {
                self.appClip = appClip
                self.headerImage = headerImage
                self.localizations = localizations
            }
        }

        public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data, included: [AppClipAdvancedExperienceLocalizationInlineCreate]? = nil) {
        self.data = data
        self.included = included
    }
}
