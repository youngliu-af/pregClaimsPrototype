import SwiftUI

struct UIClaimView: View {
    
    @StateObject var claimVM: UIClaimTemplateViewModel
    
    var body: some View {
        NavigationView {
            self.claimVM.currentScreen()
        }
    }
}

struct UIClaimView_Previews: PreviewProvider {
    
    static let uiClaimTemplate: UIClaimTemplate = parseUITemplateJson()!
    // ?? UIClaimTemplate(interviewTitle: nil, claimId: nil, created: nil, fraudLanguage: nil, interview: nil, savedStep: nil, version: nil)
    
    static var previews: some View {
//        if let template = self.uiClaimTemplate {
//            UIClaimView(claimVM: UIClaimTemplateViewModel(claimTemplate: template))
//        }
        UIClaimView(claimVM: UIClaimTemplateViewModel(claimTemplate: uiClaimTemplate))
        
    }
    
    static func parseUITemplateJson() -> UIClaimTemplate? {
        guard let path = Bundle.main.path(forResource: "pregUITemplate", ofType: "json") else {
            return nil 
        }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path))
            let template = try JSONDecoder().decode(UIClaimTemplate.self,
                                                       from: data)
            return template
        } catch {
            print(error)
        }
        return nil
        
    }
}

