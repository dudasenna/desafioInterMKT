//
//  TitleAndDescription.swift
//  InterChallenge
//
//  Created by Eduarda Senna on 16/10/21.
//

import Foundation

protocol TitleAndDescription: Codable {
    var id: Int { get }
    var title: String {get}
    var body: String {get}
}
