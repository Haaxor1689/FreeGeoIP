# FreeGeoIP

## Description
Simple and lightweight pod for getting geolocation of you current IP using [freegeoip.net http api](https://freegeoip.net/).

## Usage
Use `GeoIP.getInfo(aboutIP:withCompletion)` to get the info about the provided IP or hostname. If optional IP parameter isn't provided, your current external IP is used instead.

```swift
GeoIP.getInfo { ipInfo in
	/* ... */
}
```

## Installation
Into your Podfile add:

```
pod 'FreeGeoIP'
```

## Chagelog
* 0.1.0:
	* Initial version	