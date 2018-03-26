import Foundation

//Decoding in Swift 4

//let sampleAddress = "https://jsonplaceholder.typicode.com/users"
//let url = URL(string: sampleAddress)!
//let jsonData = try! Data(contentsOf: url)
//
//struct User: Codable {
//    let id: Int
//    let name: String
//    let username: String
//    let email: String
//    let address: Address
//    let phone: String
//    let website: String
//    let company: Company
//
//
//    struct Address: Codable {
//        let street: String
//        let suite: String
//        let city: String
//        let zipcode: String
//        let geo: Coordinates
//
//        struct Coordinates: Codable {
//            let lat: Double
//            let lng: Double
//
//            //Changing data types
//            init(from decoder: Decoder) throws {
//                let values = try decoder.container(keyedBy: CodingKeys.self)
//                let latString = try values.decode(String.self, forKey: .lat)
//                let lngString = try values.decode(String.self, forKey: .lng)
//                lat = Double(latString) ?? 0
//                lng = Double(lngString) ?? 0
//            }
//        }
//    }
//
//    struct Company: Codable {
//        let name: String
//        let catchPhrase: String
//        let bs: String
//    }
//}
//
//let jsonDecoder = JSONDecoder()
//
//do {
//    let users = try? jsonDecoder.decode(Array<User>.self, from: jsonData)
//
//
//    users?.count
//    dump(users?.first)
//
////Encoding
//    if let users = users {
//        let jsonEncoder = JSONEncoder()     //The JSONEncoder returns Data
//        jsonEncoder.outputFormatting = .prettyPrinted       //I set JSONEncoder’s outputFormatting property to .prettyPrinted get a more readable String
//
//        if let backToJSON = try? jsonEncoder.encode(users) {
//            if let jsonString = String(data: backToJSON, encoding: .utf8) {
//                print(jsonString)
//            }
//        }
//    }
//} catch {
//    print(error)
//}
//
///***************************************************************************************************************************************************************************/
////Advanced Decoding
////Changing Property Names
//
//let jsonString = """
//{
//"name1": "Jane",
//"name2": "Smith"
//}
//"""
//let jsonData2 = jsonString.data(using: .utf8)!
//
//struct Person: Codable {
//    let firstName: String
//    let lastName: String
//
//    enum CodingKeys: String, CodingKey {    //add a CodingKeys enum to the Person struct and it tells the decoder what names in the JSON match up to what properties in the struct.
//        case firstName = "name1"
//        case lastName = "name2"
//    }
//}
//
//let jsonDecoder2 = JSONDecoder()
//let person = try? jsonDecoder2.decode(Person.self, from: jsonData2)
//
//dump(person)
//
//
////Date Handling
//let jsonString3 = """
//{
//"name": "My New Project",
//"created": "2017-06-18T14:28:25Z"
//}
//"""
//
//let jsonData3 = jsonString3.data(using: .utf8)!
//
//struct Project: Codable {
//    let name: String
//    let created: Date
//}
//
//let jsonDecoder3 = JSONDecoder()
//jsonDecoder3.dateDecodingStrategy = .iso8601
//let project3 = try? jsonDecoder3.decode(Project.self, from: jsonData3)
//
//dump(project3)
//
//let jsonEncoder3 = JSONEncoder()
//jsonEncoder3.dateEncodingStrategy = .iso8601
//
//if let backToJson3 = try? jsonEncoder3.encode(project3) {
//    if let jsonString3 = String(data: backToJson3, encoding: .utf8) {
//        print(jsonString3)
//    }
//}
//
///***************************************************************************************************************************************************************************/
////Allowing For Nulls
//struct Role: Codable {
//    let firstName: String
//    let lastName: String
//    let nickName: String?
//}
//
//let jsonStringWithNulls = """
//[
//    {
//        "firstName": "Sally",
//        "lastName": "Sparrow",
//        "nickName": null
//    },
//    {
//        "firstName": "Doctor",
//        "lastName": "Who",
//        "nickName": "The Doctor"
//    }
//]
//"""
//
//let jsonDataWithNulls = jsonStringWithNulls.data(using: .utf8)!
//
//let jsonDecoderWithNulls = JSONDecoder()
//let roles = try? jsonDecoderWithNulls.decode(Array<Role>.self , from: jsonDataWithNulls)
//
//dump(roles)
//
//let jsonEncoderWithNulls = JSONEncoder()
//jsonEncoderWithNulls.outputFormatting = .prettyPrinted
//
//if let backToJsonWithNulls = try? jsonEncoderWithNulls.encode(roles) {
//    if let jsonString = String(data: backToJsonWithNulls, encoding: .utf8) {
//        print(jsonString)
//    }
//}
//
///***************************************************************************************************************************************************************************/
////Property Lists
////As well as JSONDecoder and JSONEncoder, Swift 4 has introduced PropertyListDecoder and PropertyListEncoder, so let’s take a quick look at that.
//
//let plistEncoder = PropertyListEncoder()
//plistEncoder.outputFormat = .xml
//if let plist = try? plistEncoder.encode(project3) {
//    if let plistString = String(data: plist, encoding: .utf8) {
//        print(plistString)
//    }
//
//    let plistDecoder = PropertyListDecoder()
//    let project4 = try? plistDecoder.decode(Project.self, from: plist)
//
//    dump(project4)
//}
//
//
//
//
//
//
//
//
//
//
///***************************************************************************************************************************************************************************/
//let resultStringWithNulls = """
//{
//"resultCode": 200,
//"errorKey": null,
//"result": [
//{
//"accessId": "LyZKbKBhvWAm9cQFg",
//"isAnyTime": false,
//"range": 0,
//"repeatInterval": "everyDay",
//"on": null,
//"startDate": "2018-03-01T12:44:01.251Z",
//"expirationDate": "2018-03-08T13:44:07.649Z",
//"fromTime": "01:00:00",
//"toTime": "16:00:00"
//},
//{
//"accessId": "LyZKbKBhvWAm9cQFg",
//"isAnyTime": false,
//"range": 0,
//"repeatInterval": "weekDays",
//"on": [
//"monday",
//"tuesday",
//"wednesday",
//"thursday"
//],
//"startDate": "2018-03-02T08:44:22.706Z",
//"expirationDate": "2018-03-08T08:44:26.084Z",
//"fromTime": "03:00:00",
//"toTime": "16:00:00"
//},
//{
//"accessId": "LyZKbKBhvWAm9cQFg",
//"isAnyTime": false,
//"range": 0,
//"repeatInterval": "monthDays",
//"on": [
//"3",
//"4",
//"5",
//"6"
//],
//"startDate": "2018-03-02T08:45:07.130Z",
//"expirationDate": "2018-03-08T08:45:10.280Z",
//"fromTime": "02:00:00",
//"toTime": "16:00:00"
//}
//]
//}
//"""
////struct Policy: Codable {
////    let resultCode: Int?
////    let errorKey: String?
////    let result: [Result]
////
////    struct Result: Codable {
////        let accessId: String?
////        let isAnyTime: Bool?
////        let range: Int?
////        let repeatInterval: String?
////        let on: [String]?
////        let fromTime: String?
////        let toTime: String?
////        let startDate: String?
////        let expirationDate: String?
////    }
////
//////}
////class Policy: Codable {
////    let resultCode: Int?
////    let errorKey: String?
////    let result: [Result]
////
////}
////
////class Result: Codable {
////    let accessId: String?
////    let isAnyTime: Bool?
////    let range: Int?
////    let repeatInterval: String?
////    let on: [String]?
////    let fromTime: String?
////    let toTime: String?
////    let startDate: String?
////    let expirationDate: String?
////}
////
////
////let resultDataWithNulls = resultStringWithNulls.data(using: .utf8)!
////
////let policyDecoder = JSONDecoder()
////
////do {
////    let policy = try? policyDecoder.decode(Policy.self, from: resultDataWithNulls)
////
////    dump(policy)
////
////    //Encoding
////    if let policy = policy {
////        let jsonEncoder = JSONEncoder()     //The JSONEncoder returns Data
////        jsonEncoder.outputFormatting = .prettyPrinted       //I set JSONEncoder’s outputFormatting property to .prettyPrinted get a more readable String
////
////        if let backToJSON = try? jsonEncoder.encode(policy) {
////            if let jsonString = String(data: backToJSON, encoding: .utf8) {
////                print(jsonString)
////            }
////        }
////    }
////} catch {
////    print(error)
////}
//
//
//
//
//
//
//let jsonData22 = """
//{
//    "array": [
//        33,
//        {"id": 44, "name": "Jonas"}
//    ]
//}
//""".data(using: .utf8)!
//
//enum ArrayValue: Decodable {
//    case int(Int)
//    case person2(Person2)
//
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//
//        if let value = try? container.decode(Int.self) {
//            self = .int(value)
//             } else if let value = try? container.decode(Person2.self) {
//            self = .person2(value)
//        } else {
//            let context = DecodingError.Context(codingPath: container.codingPath, debugDescription: "Unknown type")
//            throw DecodingError.dataCorrupted(context)
//        }
//    }
//}
//
//struct Person2: Decodable {
//    var id: Int
//    var name: String
//}
//
//struct ArrayStruct: Decodable {
//    var array: [ArrayValue]
//}
//
////let temp = try JSONDecoder().decode(ArrayStruct.self, from: jsonData22)
////print(temp.array)
//
//
////let resultDataWithNulls = resultStringWithNulls.data(using: .utf8)!
////
//let policyDecoder2 = JSONDecoder()
//
//do {
//    let policy2 = try? policyDecoder2.decode(ArrayStruct.self, from: jsonData22)
//
//    dump(policy2)
//
//    //Encoding
////    if let policy2 = policy2 {
////        let jsonEncoder2 = JSONEncoder()     //The JSONEncoder returns Data
////        jsonEncoder2.outputFormatting = .prettyPrinted       //I set JSONEncoder’s outputFormatting property to .prettyPrinted get a more readable String
////
////        if let backToJSON = try? jsonEncoder2.encode(policy2) {
////            if let jsonString = String(data: backToJSON, encoding: .utf8) {
////                print(jsonString)
////            }
////        }
////    }
//} catch {
//    print(error)
//}
//
//
//
//
//
//
//
//let jsonData33 = """
//{
//                   "accessId": "LyZKbKBhvWAm9cQFg",
//                   "isAnyTime": false,
//                   "range": 0,
//                   "repeatInterval": "weekDays",
//                   "on": [
//                          "monday",
//                          "tuesday",
//                          "wednesday",
//                          "thursday"
//                          ],
//                   "startDate": "2018-03-02T08:44:22.706Z",
//                   "expirationDate": "2018-03-08T08:44:26.084Z",
//                   "fromTime": "03:00:00",
//                   "toTime": "16:00:00"
//               }
//""".data(using: .utf8)!
//
//enum ArrayValue33: Decodable {
////    case int(Int)
//    case string(String)
//
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//
////        if let value = try? container.decode(Int.self) {
////            self = .int(value)
////        } else
//            if let value = try? container.decode(String.self) {
//            self = .string(value)
//        } else {
//            let context = DecodingError.Context(codingPath: container.codingPath, debugDescription: "Unknown type")
//            throw DecodingError.dataCorrupted(context)
//        }
//    }
//}
//
//class ArrayStruct33: Decodable {
//    var on: [ArrayValue33]
//    var toTime: String
//}
//
////let temp = try JSONDecoder().decode(ArrayStruct.self, from: jsonData22)
////print(temp.array)
//
//
////let resultDataWithNulls = resultStringWithNulls.data(using: .utf8)!
////
//let policyDecoder33 = JSONDecoder()
//
//do {
//    let policy33 = try? policyDecoder33.decode(ArrayStruct33.self, from: jsonData33)
//
//    dump(policy33)
//} catch {
//    print(error)
//}
//

let jsonString = """
{
    "resultCode": 200,
    "errorKey": null,
    "result": [
               {
                   "accessId": "LyZKbKBhvWAm9cQFg",
                   "isAnyTime": false,
                   "range": 0,
                   "repeatInterval": "everyDay",
                   "on": null,
                   "startDate": "2018-03-01T12:44:01.251Z",
                   "expirationDate": "2018-03-08T13:44:07.649Z",
                   "fromTime": "01:00:00",
                   "toTime": "16:00:00"
               },
               {
                   "accessId": "LyZKbKBhvWAm9cQFg",
                   "isAnyTime": false,
                   "range": 0,
                   "repeatInterval": "weekDays",
                   "on": [
                          "monday",
                          "tuesday",
                          "wednesday",
                          "thursday"
                          ],
                   "startDate": "2018-03-02T08:44:22.706Z",
                   "expirationDate": "2018-03-08T08:44:26.084Z",
                   "fromTime": "03:00:00",
                   "toTime": "16:00:00"
               },
               {
                   "accessId": "LyZKbKBhvWAm9cQFg",
                   "isAnyTime": false,
                   "range": 0,
                   "repeatInterval": "monthDays",
                   "on": [
                          "3",
                          "4",
                          "5",
                          "6"
                          ],
                   "startDate": "2018-03-02T08:45:07.130Z",
                   "expirationDate": "2018-03-08T08:45:10.280Z",
                   "fromTime": "02:00:00",
                   "toTime": "16:00:00"
               }
               ]
}
""".data(using: .utf8)!

class PoliciesCodable : NSObject, Codable {
    private enum PoliciesCodableCodingKeys : String, CodingKey {
        case resultCode = "resultCode"
        case errorKey = "errorKey"
        case result = "result"
    }

    @objc dynamic var resultCode: Int = 0
    @objc dynamic var errorKey: String? = nil
    @objc dynamic var result : [ResultCodable]?

    required convenience public init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: PoliciesCodableCodingKeys.self)
        resultCode = ( try container.decodeIfPresent(Int.self, forKey: .resultCode) )!
        errorKey = try container.decodeIfPresent(String.self, forKey: .errorKey)
        result = try container.decode([ResultCodable].self, forKey: .result)
    }
}

class ResultCodable : NSObject, Codable {
    private enum CodingKeys: String, CodingKey{
        case accessId = "accessId"
        case isAnyTime = "isAnyTime"
        case range = "range"
        case repeatInterval = "repeatInterval"
        case on = "on"
        case fromTime = "fromTime"
        case toTime =  "toTime"
        case startDate = "startDate"
        case expirationDate = "expirationDate"
    }

    @objc dynamic var accessId: String = ""
    @objc dynamic var isAnyTime: Bool = false
    @objc dynamic var range: Int = 0
    @objc dynamic var repeatInterval: String = ""
    @objc dynamic var on: [String]?
    @objc dynamic var fromTime: String = ""
    @objc dynamic var toTime: String = ""
    @objc dynamic var startDate: String = ""
    @objc dynamic var expirationDate: String = ""
}
//Then decode the stuff

let policyDecoder33 = JSONDecoder()

do {
    let policy33 = try? policyDecoder33.decode(PoliciesCodable.self, from: jsonString)

    dump(policy33)
} catch {
    print(error)
}

/