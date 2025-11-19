import Foundation
// BarcodeEnum.swift

enum BarcodeEnum {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

/*
 Even though there is repetition of code,
 it is because of Swift's enum safety — you must
 handle every possible case even if you know
 only one will be active at a time.
*/
func barCode(_ barcode: BarcodeEnum) {
    switch barcode {
    case let .upc(numberSystem, manufacturer, product, check):
        print("UPC: \(numberSystem)-\(manufacturer)-\(product)-\(check)")
    case let .qrCode(code):
        print("QR Code: \(code)")
    }
}

// Example usage:
let productBarcode = BarcodeEnum.upc(8, 85909, 51226, 3)
let qrBarcode = BarcodeEnum.qrCode("https://openai.com")


