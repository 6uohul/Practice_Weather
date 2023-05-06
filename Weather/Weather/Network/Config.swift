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
            static let basesURL = "BASE_URL"
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
    static let baseURL: String = {
        guard let key = Config.infoDictionary[Keys.Plist.basesURL] as? String else {
            fatalError("Base URL is not set in plist for this configuration.")
        }
        return key
    }
}
