//
//  APIFunctions.swift
//  Kindergarten Literacy
//
//  Created by Bingqing Xu on 4/8/21.
//

import Foundation
import Alamofire

struct Student: Decodable {
    var title: String
    var date: String
    var _id: String
    var student: String
}


//class APIFunctions {
//    var delegate: DataDelegate?
//    
//    func fetchStudents() {
//        AF.request("http://128.61.21.180:8081/fetch").response { response in
//            print(response.data)
//            
//            let data = String(data: response.data!, encoding: .utf8)
//            
//            self.delegate?.updateArray(newArray: data)
//        }
//    }
//    
//}
