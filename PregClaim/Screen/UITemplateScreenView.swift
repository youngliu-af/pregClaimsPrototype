//
//  UITemplateScreen.swift
//  PregClaim
//
//  Created by Young Liu on 5/16/22.
//

import SwiftUI

struct UITemplateScreenView: View {
    
    @ObservedObject var screenViewModel: UITemplateScreenViewModel
    
    var body: some View {
        Form {
            ForEach(screenViewModel.uiTemplateScreen.sections?.compactMap { $0 } ?? [], id: \.id) { section in
                UITemplateSectionView(section: section)
            }
        }
        .navigationTitle(screenViewModel.uiTemplateScreen.title ?? "Not working")
    }
}

//struct UITemplateScreen_Previews: PreviewProvider {
//
////    static let example = PREGUIScreen(title: "Delivery Info",
////                                      id: "DeliveryInfo",
////                                      progress: 20,
////                                      allowSave: false,
////                                      sections: [UITemplateSectionView_Previews.example])
//
//
//    static var previews: some View {
//        NavigationView {
//            UITemplateScreenView(screenViewModel: <#T##UITemplateScreenViewModel#>)
//        }
//
//    }
//}
