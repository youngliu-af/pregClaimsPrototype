//
//  UIScreenView.swift
//  Pets
//
//  Created by Young Liu on 5/27/22.
//

import SwiftUI

struct UIScreenView: View {
    
    @State var screen: UITemplateScreen
    
    var body: some View {
        Form {
            
        }
//        Form {
//            if let sections = screen.sections {
//                ForEach(sections) { section in
//                    Text(section.header ?? "No section header")
//                    if let rows = section.rows {
//                        ForEach(rows) { row in
//                            // RowBuilder
//                            UITemplateRowRadioView(row: row)
//                        }
//                    }
//                }
//            }
//
//        }.navigationTitle(screen.title ?? "")
    }
}

struct UIScreenView_Previews: PreviewProvider {
    
    static let screen = UITemplateScreen(title: nil, id: "5", progress: nil, allowSave: nil)
    
    static var previews: some View {
        NavigationView {
            UIScreenView(screen: screen)
        }
        
    }
}
