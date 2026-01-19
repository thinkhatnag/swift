import Foundation

class DataValidator {

    enum ValidationError: Error {
        case emptyEmail
        case invalidEmail
        case invalidPhoneNumber
        case invalidDate
    }

    // Validate Email
    func validateEmail(_ email: String) throws {
        if email.isEmpty {
            throw ValidationError.emptyEmail
        }

        let emailRegex = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        let isValid = email.range(of: emailRegex, options: .regularExpression) != nil

        if !isValid {
            throw ValidationError.invalidEmail
        }
    }

    func validatePhoneNumber(_ phone: String) throws {
        let digitsOnly = phone.filter { $0.isNumber }
        if digitsOnly.count != 10 {
            throw ValidationError.invalidPhoneNumber
        }
    }

    func validateDate(_ dateStr: String) throws {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.timeZone = TimeZone.current
        guard let inputDate = formatter.date(from: dateStr) else {
            throw ValidationError.invalidDate
        }
        let todayStr = formatter.string(from: Date())
        guard let todayDate = formatter.date(from: todayStr) else {
            throw ValidationError.invalidDate
        }
        if inputDate != todayDate {
            throw ValidationError.invalidDate
        }
    }
}

let validator = DataValidator()

func readInput(prompt: String) -> String {
    print(prompt, terminator: " ")
    return readLine() ?? ""
}

while true {
    let email = readInput(prompt: "Enter your email:")
    do {
        try validator.validateEmail(email)
        print("Email is valid.\n")
        break
    } catch DataValidator.ValidationError.emptyEmail {
        print("Error: Email cannot be empty.\n")
    } catch DataValidator.ValidationError.invalidEmail {
        print("Error: Invalid email format.\n")
    } catch {
        print("Unknown error.\n")
    }
}

while true {
    let phone = readInput(prompt: "Enter your phone number (10 digits):")
    do {
        try validator.validatePhoneNumber(phone)
        print("Phone number is valid.\n")
        break
    } catch DataValidator.ValidationError.invalidPhoneNumber {
        print("Error: Phone number must be 10 digits.\n")
    } catch {
        print("Unknown error.\n")
    }
}

while true {
    let date = readInput(prompt: "Enter a date (yyyy-MM-dd):")
    do {
        try validator.validateDate(date)
        print("Date is valid.\n")
        break
    } catch DataValidator.ValidationError.invalidDate {
        print("Error: Invalid date format. Use yyyy-MM-dd.\n")
    } catch {
        print("Unknown error.\n")
    }
}

print("All inputs are valid! Program finished.")

