//
//  Config.swift
//  Weather
//
//  Created by 김인영 on 2023/05/06.
//

import Foundation


enum Config {
    
    enum Keys {
        enum Plist {
            static let baseKEY = "BASE_KEY"
        }
    }
    
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("plist cannot found")
        }
        return dict
    }()
}

extension Config {
    static let baseKEY: String = {
        guard let key = Config.infoDictionary[Keys.Plist.baseKEY] as? String else {
            fatalError("Base URL is not set in plist for this configuration.")
        }
        return key
    }()
}
