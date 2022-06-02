//
//  UITemplateScreenModel.swift
//  PregClaim
//
//  Created by Young Liu on 5/16/22.
//

import Foundation

struct PREGUIScreen: Codable {

    let title: String?
    let id: String?
    
    /// How far the user has gotten in the interview
    let progress: Int?
    
    /// If the user can save at this particular screen
    let allowSave: Bool?
    
    var sections: [PREGUISection?]?

}
