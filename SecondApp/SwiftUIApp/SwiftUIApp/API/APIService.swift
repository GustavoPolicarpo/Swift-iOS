//
//  APIService.swift
//  SwiftUIApp
//
//  Created by user270444 on 11/23/24.
//

import Foundation
import Alamofire

struct APIService {
    func getGoals(completion: @escaping([GoalType]?, Error?)-> Void) {
        AF.request("https://private-305e8a-dm1261.apiary-mock.com/goals")
            .responseDecodable(of:[GoalType].self) {
                response in switch response.result {
                case .success(let goals): completion(goals, nil)
                default: break
                }
            }
    }
    
    func postGoal(_ goal: GoalType, completion: @escaping (Result<String, Error>) -> Void) {
        let url = "https://private-305e8a-dm1261.apiary-mock.com/goals"
        let headers: HTTPHeaders = [
            "Content-Type": "application/json"
        ]

        AF.request(url, method: .post, parameters: goal, encoder: JSONParameterEncoder.default, headers: headers)
            .validate()
            .responseString { response in
                switch response.result {
                case .success(let message):
                    completion(.success(message))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
 }
