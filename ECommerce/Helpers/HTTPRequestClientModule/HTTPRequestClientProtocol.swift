//
//  HTTPRequestClientProtocol.swift
//  ECommerce
//
//  Created by Thaciana Lima on 27/08/17.
//  Copyright © 2017 TL. All rights reserved.
//

import Foundation

import Foundation

protocol HTTPRequestClientProtocol {
    func request(method: HTTPRequestMethod, url: String, urlParameters: [String : String]?, headers: [String : String]?, parameters: [String : Any]?, success: @escaping (Any?) -> Void, failure: @escaping (HTTPRequestError) -> Void)
}
