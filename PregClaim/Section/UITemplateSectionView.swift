//
//  UITemplateSectionView.swift
//  PregClaim
//
//  Created by Young Liu on 5/16/22.
//

import SwiftUI

struct UITemplateSectionView: View {
    
    @State var section: PREGUISection
    
    var body: some View {
        Section(header: Text(section.header ?? "")) {
            ForEach(section.rows ?? []) { row in
                UITemplateRowRadioView(row: row)
            }
        }
        
    }
}

struct UITemplateSectionView_Previews: PreviewProvider {
    
    static let example = PREGUISection(id: "d",
                                       header: "Have you delivered yet?",
                                       footer: nil,
                                       helpText: "",
                                       rows: [
                                        UITemplateRowRadioView_Previews.exampleWithoutTitle,
                                        UITemplateRowRadioView_Previews.example],
                                       visibility: nil)
    
    static var previews: some View {
        NavigationView {
            UITemplateSectionView(section: example)
        }
    }
}
