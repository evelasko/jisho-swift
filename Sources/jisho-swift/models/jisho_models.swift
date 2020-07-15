//
//  jisho_result.swift
//  jisho
//
//  Created by Misfitcoders - Enrique Velasco on 08/07/2020.
//  Copyright © 2020 Misfitcoders - Enrique Velasco. All rights reserved.
//

import Foundation
import Combine

public struct JishoResult: Decodable {
    public let data: [JishoEntry]
}

/// Entry struct for jisho api result entries
public struct JishoEntry: Decodable {
    /// Entry value
    public let slug: String
    /// Is commonly used?
    public let isCommon: Bool
    public let tags: [String]
    /// JLPT Levels
    public let jlpt: [String]
    /// Japanese word or sentence (kanji) and its reading (hiragana)
    public let japanese: [JapaneseEntry]
    /// Sense definition of the word or phrase
    public let senses: [Sense]
}

public struct JapaneseEntry: Decodable {
    /// Original sentence or word (kanji)
    public let word: String?
    /// Hiragana reading
    public let reading: String?
}

public struct Sense: Decodable {
    public let englishDefinitions: [String]
    public let partsOfSpeech: [String]
    public let links: [Link]
    public let tags: [String]
    public let restrictions: [String]
    public let seeAlso: [String]
    public let antonyms: [String]
    public let source: [String]
    public let info: [String]
}

public struct Link: Decodable {
    public let text: String?
    public let url: String?
}

public struct FuriganaEntry: Decodable {
    public let original: String
    public let hiragana: String
    public let katakana: String
    public let romaji: String
}

public struct JishoFuriganaEntry: Decodable {
    public let jisho: JishoEntry
    public let furigana: [FuriganaEntry]
}
