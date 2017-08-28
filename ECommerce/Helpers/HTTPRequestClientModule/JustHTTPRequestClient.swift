//
//  JustHTTPRequestClient.swift
//  ECommerce
//
//  Created by Thaciana Lima on 27/08/17.
//  Copyright © 2017 TL. All rights reserved.
//

import Foundation
import Just

final class JustHTTPRequestClient: HTTPRequestClientProtocol {
    
    func request(method: HTTPRequestMethod, url: String, urlParameters: [String : String]?, headers: [String : String]?, parameters: [String : Any]?, success: @escaping (Any?) -> Void, failure: @escaping (HTTPRequestError) -> Void) {
        let finalUrl = finalUrlReplacing(urlParameters: urlParameters, url: url)
        
        switch method {
        case .get:
            Just.get(finalUrl, params: parameters ?? [:], headers: headers ?? [:]) { result in
                if result.ok {
                    success(result.json)
                }
                else {
                    let httpRequestError = HTTPRequestError(statusCode: result.statusCode ?? -1)
                    failure(httpRequestError)
                }
            }
        case .post:
            break;
        }
    }
    
    private func finalUrlReplacing(urlParameters: [String : String]?, url: String) -> String {
        if let urlParameters = urlParameters {
            for (key, value) in urlParameters {
                return url.replacingOccurrences(of: "{{\(key)}}", with: value)
            }
        }
        return url
    }
}
