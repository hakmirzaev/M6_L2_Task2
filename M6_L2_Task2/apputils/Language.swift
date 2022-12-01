//
//  Language.swift
//  M6_L2_Task2
//
//  Created by Bekhruz Hakmirzaev on 01/12/22.
//

import Foundation

extension Bundle {
    private static var bundle: Bundle!
    public static func localizedBundle() -> Bundle! {
        if bundle == nil {
            let appLang = UserDefaults.standard.string(forKey: "appLang") ?? "en"
            let path = Bundle.main.path(forResource: appLang, ofType: "lproj")
            bundle = Bundle(path: path!)
        }
        return bundle
    }
    public static func setLanguage(lang: String) {
        UserDefaults.standard.set(lang, forKey: "appLang")
        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
        bundle = Bundle(path: path!)
    }
}

extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.localizedBundle(), value: "", comment: "")
    }
    func localizedWithFormat(arguments: CVarArg...) -> String {
        return String(format: self.localized(), arguments: arguments)
    }
}
