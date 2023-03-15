//
//  WebHelper.swift
//  SampleUnitTesting
//
//  Created by Basem Emara on 1/21/16.
//  Copyright © 2016 Zamzam. All rights reserved.
//

import Foundation

public struct WebHelper {
    
    /**
     Add, update, or remove a query string parameter from the URL
     
     - parameter url:   the URL
     - parameter key:   the key of the query string parameter
     - parameter value: the value to replace the query string parameter, nil will remove item
     
     - returns: the URL with the mutated query string
     */
    public func addOrUpdateQueryStringParameter(url: String, key: String, value: String?) -> String {
        if var components = URLComponents(string: url),
            var queryItems: [URLQueryItem] = components.queryItems {
                for (index, item) in queryItems.enumerated() {
                    // Match query string key and update
                    if item.name.lowercased() == key.lowercased() {
                        if let v = value {
                            queryItems[index] = URLQueryItem(name: key, value: v)
                        } else {
                            queryItems.remove(at: index)
                        }
                        components.queryItems = queryItems.count > 0
                            ? queryItems : nil
                        return components.string!
                    }
                }
                // Key doesn't exist if reaches here
                if let v = value {
                    // Add key to URL query string
                    queryItems.append(URLQueryItem(name: key, value: v))
                    components.queryItems = queryItems
                    return components.string!
                }
            }
        return url
    }
    
    /**
     Removes a query string parameter from the URL
     
     - parameter url:   the URL
     - parameter key:   the key of the query string parameter
     
     - returns: the URL with the mutated query string
     */
    public func removeQueryStringParameter(url: String, key: String) -> String {
        return self.addOrUpdateQueryStringParameter(url: url, key: key, value: nil)
    }
}
