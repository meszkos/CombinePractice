//
//  ApiCaller.swift
//  CombinePractice
//
//  Created by MacOS on 28/05/2022.
//

import Foundation
import Combine

class APICaller{
    
    static let shared = APICaller()
    
    func fetchCompanies() ->Future<[String], Error>{
        return Future{promixe in
            DispatchQueue.main.asyncAfter(deadline: .now()+3){
                promixe(.success(["Apple", "Google","Amazon","Facebook"]))
            }
        }
    }
}
