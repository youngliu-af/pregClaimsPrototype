import Foundation

/**
 This class will be responsible for driving the changes to the claim
 */
class UIClaimTemplateViewModel: ObservableObject {
    
    let claimTemplate: UIClaimTemplate
    
    /// The current screen - index starts at 0
    /// To match the array index
    var currentScreenNumber = 0
    
    init(claimTemplate: UIClaimTemplate) {
        self.claimTemplate = claimTemplate
    }
    
    /**
     This will return the current screen based on the input from the user
     */
    func currentScreen() -> UITemplateScreenView? {
        // Parse data and determine which screen to render
        guard let screenArray = self.claimTemplate.screens else {
            return nil
        }
        let screenModel = screenArray[currentScreenNumber]
        return UITemplateScreenView(screenViewModel: UITemplateScreenViewModel(uiTemplateScreen: screenModel))
    }
}
