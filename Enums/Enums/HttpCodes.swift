import Foundation

enum HTTPStatusCode: Int {
    case ok = 200
    case created = 201
    case accepted = 202
    case noContent = 204
    
    case badRequest = 400
    case unauthorized = 401
    case forbidden = 403
    case notFound = 404
    
    case internalServerError = 500
    case notImplemented = 501
    case badGateway = 502
    case serviceUnavailable = 503
}

func statusCode() {
    var valid = false

    repeat {
        print("Enter an HTTP status code you know: ", terminator: "")
        
        if let input = readLine(), let code = Int(input) {
            if let status = HTTPStatusCode(rawValue: code) {
                valid = true
                switch status {
                case .ok:
                    print("Status Code: 200 - OK")
                case .created:
                    print("Status Code: 201 - Created")
                case .accepted:
                    print("Status Code: 202 - Accepted")
                case .noContent:
                    print("Status Code: 204 - No Content")
                case .badRequest:
                    print("Status Code: 400 - Bad Request")
                case .unauthorized:
                    print("Status Code: 401 - Unauthorized")
                case .forbidden:
                    print("Status Code: 403 - Forbidden")
                case .notFound:
                    print("Status Code: 404 - Not Found")
                case .internalServerError:
                    print("Status Code: 500 - Internal Server Error")
                case .notImplemented:
                    print("Status Code: 501 - Not Implemented")
                case .badGateway:
                    print("Status Code: 502 - Bad Gateway")
                case .serviceUnavailable:
                    print("Status Code: 503 - Service Unavailable")
                }
            } else {
                print("Invalid code! Please try again.\n")
            }
        } else {
            print("Please enter a valid number.\n")
        }
    } while valid
}


