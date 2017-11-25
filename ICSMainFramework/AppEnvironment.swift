//
//  AppConfig.swift
//  ICSMainFramework
//
//  Created by LEI on 5/14/15.
//  Copyright (c) 2015 TouchingApp. All rights reserved.
//

import Foundation

public struct AppEnv {
    // App Name
    // App Version
    // App Build
    public static var version: String {
        return NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString") as! String
    }
    
    public static var fullVersion: String {
        return "\(AppEnv.version) Build \(AppEnv.build)"
    }
    
    public static var build: String {
        return NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleVersion") as! String
    }
    
    public static var countryCode: String {
        return NSLocale.currentLocale().objectForKey(NSLocaleCountryCode) as? String ?? "US"
    }
    
    public static var languageCode: String {
        return NSLocale.currentLocale().objectForKey(NSLocaleLanguageCode) as? String ?? "en"
    }
    
    public static var appName: String {
        return NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleDisplayName") as! String
    }
    
    
}