//
//  UITemplateRowModel.swift
//  PregClaim
//
//  Created by Young Liu on 5/13/22.
//

import Foundation

class UIRowViewModel: ObservableObject {
    
    var uiRow: UITemplateRow
    
    var text: [String] {
        // Safely returns all the non nil items from the array
        return uiRow.text?.compactMap { $0 } ?? []
    }
    
    init(uiRow: UITemplateRow) {
        self.uiRow = uiRow
    }
}

struct UITemplateRow: Codable, Identifiable {

    /// This should not be nil
    let id: String?
    
    let title: String?
    
    let rowType: Int?
    
    /// Note: String has to be optional as well
    let text: [String?]?
    
    var answer: String?
    let editable: Bool?
    let helpText: String?
    
    let placeHolder: String?
    let refreshClaim: Bool?

    let validationData: [PREGUIValidationData?]?
    let visibility: PREGUIVisibility?
}

struct PREGUIValidationData: Codable {
    let type: Int?
    let id: String?
    let matchField: String?
    let matchValue: String?
    
    let validationText: String?
}

struct PREGUIVisibility: Codable {

    let condition: [PREGUIValidationData?]?
    let isVisible: Bool?

}
