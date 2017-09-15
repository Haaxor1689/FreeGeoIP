//
//  GeoIp.swift
//  FreeGeoIP
//
//  Created by Maros Betko on 15/09/2017.
//  Copyright © 2017 Maros Betko. All rights reserved.
//

import Foundation
import ObjectMapper

public class GeoIPInfo: Mappable {
	public var ip: String!
	public var countryCode: String!
	public var countryLocalized: String? {
		return Locale.current.localizedString(forRegionCode: countryCode)
	}
	public var countryName: String!
	public var regionCode: String!
	public var regionName: String!
	public var city: String!
	public var zipCode: String!
	public var timeZone: String!
	public var latitude: Double!
	public var longitude: Double!
	public var metroCode: Int!
	
	required public init?(map: Map) {
		
	}
	
	public func mapping(map: Map) {
		ip <- map["ip"]
		countryCode <- map["country_code"]
		countryName <- map["country_name"]
		regionCode <- map["region_code"]
		regionName <- map["region_name"]
		city <- map["city"]
		zipCode <- map["zip_code"]
		timeZone <- map["time_zone"]
		regionCode <- map["region_code"]
		latitude <- map["latitude"]
		longitude <- map["longitude"]
		metroCode <- map["metro_code"]
	}
}

public class GeoIP {
	private init() {}
	
	public class func getInfo(aboutIP ip: String? = nil, withCompletion completion: @escaping (GeoIPInfo?)->()) {
		guard let json = try? String(contentsOf: URL(string: "https://freegeoip.net/json/" + (ip ?? ""))!) else {
			completion(nil)
			return
		}
		
		completion(Mapper<GeoIPInfo>().map(JSONString: json))
	}
}
