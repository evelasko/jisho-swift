//
//  constants.swift
//  jisho
//
//  Created by Misfitcoders - Enrique Velasco on 12/07/2020.
//  Copyright © 2020 Misfitcoders - Enrique Velasco. All rights reserved.
//

import Foundation

//MARK: - URL
let URL_Scheme = "https"

let URL_Jisho_Host = "jisho.org"
let URL_Jisho_Base_Path = "/api/v1/search/words"

let URL_Firebase_Fn_Host = "us-central1-kana-kun.cloudfunctions.net"

//MARK: - Paths to Firebase Functions
let URL_Firebase_Fn_Path_Furigana = "/furigana"
let URL_Firebase_Fn_Path_Convert = "/convert"


//MARK: - Computed URLs
func getJishoBaseURLComponents() -> URLComponents {
    var components = URLComponents()
    components.scheme = URL_Scheme
    components.host = URL_Jisho_Host
    components.path = URL_Jisho_Base_Path
    return components
}

func getFirebaseFnBaseURLComponents() -> URLComponents {
    var components = URLComponents()
    components.scheme = URL_Scheme
    components.host = URL_Firebase_Fn_Host
    return components
}


//MARK: - Jisho Search URL
func getURLJishoSearchFor(_ string: String, _ page: Int? ) -> URL {
    var components = getJishoBaseURLComponents()
    components.queryItems = [
        URLQueryItem(name: "keyword", value: string),
        URLQueryItem(name: "page", value: String(page ?? 1))
    ]
    guard let url = components.url else {
        fatalError(
            failedToComposeUrl(for: "Jisho API search: \(string)"))
    }
    return url
}

func urlGetFuriganaForSlug(_ slug: String) -> URL {
    var components = getFirebaseFnBaseURLComponents()
    components.path = URL_Firebase_Fn_Path_Furigana
    components.queryItems = [
        URLQueryItem(name: "text", value: slug)
    ]
    guard let url = components.url else {
        fatalError(
            failedToComposeUrl(for: "Firebase furigana Cloud Function"))
    }
    return url
}

//MARK: - Error Messages
func failedToComposeUrl(for host: String? = "unknown host") -> String {
    return "Failed to compose url for \(host ?? "unknown host")"
}
