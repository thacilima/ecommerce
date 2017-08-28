//
//  HTTPRequestClient.swift
//  ECommerce
//
//  Created by Thaciana Lima on 28/08/17.
//  Copyright © 2017 TL. All rights reserved.
//

import Foundation

final class HTTPRequestClient {
    static let sharedInstance: HTTPRequestClientProtocol = JustHTTPRequestClient()
}
