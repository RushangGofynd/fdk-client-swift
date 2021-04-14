# FDK Swift

FDK client for Swift language

## Getting Started

Get started with the Swift Development SDK for Fynd Platform

### Usage

1. Add `pod 'FDKClient', :git => 'https://github.com/gofynd/fdk-client-swift'`
2. Do `pod install`
3. Add `import FDKClient`
4. Start integrating

### Sample Usage - ApplicationClient

```swift
guard let config = ApplicationConfig(
    applicationID: "YOUR_APPLICATION_ID",
    applicationToken: "YOUR_APPLICATION_TOKEN") {
        return
}
let applicationClient = ApplicationClient(config: config)
applicationClient.catalog.getProductDetailBySlug(slug: "product-slug") { (product, error) in
    if let product = product {
        print(product.name)
    } else if let error = error {
        print(error.message)
    }
}
```

### Sample Usage - PlatformClient

```swift
guard let config = PlatformConfig(companyId: "COMPANY_ID", 
                                  apiKey: "API_KEY", 
                                  apiSecret: "API_SECRET", 
                                  domain: "DOMAIN") {
    return
}
let platformClient = PlatformClient(config: config)
platformClient.catalog.getCompanyDetail { (response, error) in
    if let companyDetail = response {
        print("Name of the company \(companyDetail.name)")
    } else if let error = error {
        print(error.message)
    }
}
```


### Documentation

* [Application Front](documentation/APPLICATION.md)
* [Platform Front](documentation/PLATFORM.md)