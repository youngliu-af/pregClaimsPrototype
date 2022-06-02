import Foundation

struct PREGUIFraudLanguage: Codable {

    let esig: String?
    let esigEob: String?
    let esigProvider: String?
    let font: String?
    let fontSize: Int?
    let stateName: String?
    let stateStyle: String?
    let verbiage: String?
    let verbiageStyle: String?
    
}


/**
 This is the outer most object when we make a call to the claims template, it's via this that we build out the various screens
 */
struct UIClaimTemplate: Codable {

    let interviewTitle: String?
    let claimId: String?
    let created: String?
    let fraudLanguage: PREGUIFraudLanguage?
    let interview: String?
    let savedStep: String?
    var screens: [UITemplateScreen]?
    let version: String?
    
}
