//
//  UITemplateRowView.swift
//  PregClaim
//
//  Created by Young Liu on 5/13/22.
//

import SwiftUI

/**
 This view corresponds with the "radio" row type coming from the API
 */
struct UITemplateRowRadioView: View {
    
    @State var row: UITemplateRow
    // We have to move this to a view model later to save the state to pass back to the API
    @State var answer = ""
    
    var body: some View {
        Section {
            Picker(selection: self.$answer,
                   label: Text(row.title ?? "")) {
                ForEach(row.text?.compactMap { $0 } ?? [], id: \.self) { type in
                    Text(type)
//                    Text("")
                }
            }
        }
    }
}

struct UITemplateRowRadioView_Previews: PreviewProvider {
    
    static let exampleWithoutTitle = UITemplateRow(id: "HaveYouDeliveredAnswer",
                                       title: "",
                                       rowType: 0,
                                       text: ["No", "Yes"],
                                       answer: "",
                                       editable: true,
                                       helpText: nil,
                                       placeHolder: nil,
                                       refreshClaim: true,
                                       validationData: nil,
                                       visibility: nil)
    
    static let example = UITemplateRow(id: "DeliveryType",
                                       title: "Type of Delivery",
                                       rowType: 0,
                                       text: ["Vaginal", "Delivery"],
                                       answer: "",
                                       editable: true,
                                       helpText: nil,
                                       placeHolder: nil,
                                       refreshClaim: true,
                                       validationData: nil,
                                       visibility: nil)
    
    static var previews: some View {
        NavigationView {
            Form {
                UITemplateRowRadioView(row: example)
            }
        }
        
    }
}
