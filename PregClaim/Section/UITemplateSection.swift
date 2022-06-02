//
//  UITemplateSection.swift
//  PregClaim
//
//  Created by Young Liu on 5/16/22.
//

import Foundation

struct PREGUISection: Codable, Identifiable {

    let id: String?
    
    /// This is the question that will appear?
    let header: String?
    
    let footer: String?
    
    let helpText: String?
    
    var rows: [UITemplateRow]?
    let visibility: PREGUIVisibility?

    static let example = PREGUISection(id: "HaveYouDelivered",
                                       header: "Have you delivered yet?",
                                       footer: nil,
                                       helpText: nil,
                                       rows: [
                                        UITemplateRowRadioView_Previews.exampleWithoutTitle,
                                        UITemplateRowRadioView_Previews.example],
                                       visibility: nil)
    
}
