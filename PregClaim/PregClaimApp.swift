//
//  PregClaimApp.swift
//  PregClaim
//
//  Created by Young Liu on 5/13/22.
//

import SwiftUI

@main
struct PregClaimApp: App {
    var body: some Scene {
        WindowGroup {
            //NavigationView {
                UIClaimView(claimVM: UIClaimTemplateViewModel(claimTemplate: UIClaimView_Previews.uiClaimTemplate))
            //}
        }
    }
}
