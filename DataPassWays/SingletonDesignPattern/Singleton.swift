//
//  Singleton.swift
//  DataPassWays
//
//  Created by Burak on 25.10.2021.
//

import Foundation

class Singleton{
    
    static let shared = Singleton()
    
    var year: Int? = nil
    
    private init() {
        
    }
}
