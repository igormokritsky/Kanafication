//
//  hiranagaAndKatakanaDIctionaties.swift
//  Kanafication
//
//  Created by Ihor Mokrytskyi on 3/11/19.
//  Copyright © 2019 Ihor Mokrytskyi. All rights reserved.
//

import Foundation



class Alphabet {
    
    private var easyPart: [String: String] = [:]
    private var mediumPart: [String: String] = [:]
    private var hardPart: [String: String] = [:]
    
    init(easy easyPart: [String: String], medium  mediumPart: [String: String], hard hardPart: [String: String] ) {
        self.easyPart = easyPart
        self.mediumPart = mediumPart
        self.hardPart = hardPart
    }
    
    var easy: [String: String] {
        return self.easyPart
    }
    
    var medium: [String: String] {
        return easy.merging(mediumPart, uniquingKeysWith: { (current, _) in current })
    }
    
    var hard: [String: String] {
        return medium.merging(hardPart, uniquingKeysWith: { (current, _) in current })
    }
    
    func alphabet(for level: AlphabetLevel) -> [String: String] {
        switch level {
        case .easy:
            return easy
        case .medium:
            return medium
        case .hard:
            return hard
        }
    }
    
    enum AlphabetLevel {
        case easy
        case medium
        case hard
    }
}

struct Alphabets {
    static let hiragana = Alphabet(easy: ["a":"あ", "i":"い", "u":"う", "e":"え", "o":"お",
                                          "A":"あ", "I":"い", "U":"う", "E":"え", "O":"お",
                                          "ka":"か", "ki":"き", "ku":"く", "ke":"け", "ko":"こ",
                                          "Ka":"か", "Ki":"き", "Ku":"く", "Ke":"け", "Ko":"こ",
                                          "sa":"さ", "shi":"し", "su":"す", "se":"せ", "so":"そ",
                                          "Sa":"さ", "Shi":"し", "Su":"す", "Se":"せ", "So":"そ",
                                          "ta":"た", "chi":"ち", "tsu":"つ", "te":"て", "to":"と",
                                          "Ta":"た", "Chi":"ち", "Tsu":"つ", "Te":"て", "To":"と",
                                          "na":"な", "ni":"に", "nu":"ぬ", "ne":"ね", "no":"の",
                                          "Na":"な", "Ni":"に", "Nu":"ぬ", "Ne":"ね", "No":"の"],
                                   medium: ["ha":"は", "hi":"は", "fu":"ふ", "he":"へ", "ho":"ほ",
                                            "Ha":"は", "Hi":"は", "Fu":"ふ", "He":"へ", "Ho":"ほ",
                                            "ma":"ま", "mi":"み", "mu":"む", "me":"め", "mo":"も",
                                            "Ma":"ま", "Mi":"み", "Mu":"む", "Me":"め", "Mo":"も",
                                            "ya":"や", "yu":"ゆ", "yo":"よ",
                                            "Ya":"や", "Yu":"ゆ", "Yo":"よ",
                                            "ra":"ら", "ri":"り", "ru":"る", "re":"れ", "ro":"ろ",
                                            "Ra":"ら", "Ri":"り", "Ru":"る", "Re":"れ", "Ro":"ろ",
                                            "wa":"わ", "wo":"を", "n":"ん",
                                            "Wa":"わ", "Wo":"を", "N":"ん"],
                                   hard: ["ga":"が", "gi":"ぎ", "gu":"ぐ", "ge":"げ","go":"ご",
                                          "Ga":"が", "Gi":"ぎ", "Gu":"ぐ", "Ge":"げ","Go":"ご",
                                          "za":"ざ", "ji":"じ", "zu":"ず", "ze":"ず","zo":"ぞ",
                                          "Za":"ざ", "Ji":"じ", "Zu":"ず", "Ze":"ず","Zo":"ぞ",
                                          "da":"だ", "di":"ぢ", "zhu":"づ", "de":"で","do":"ど",
                                          "Da":"だ", "Di":"ぢ", "Zhu":"づ", "De":"で","Do":"ど",
                                          "ba":"ば", "bi":"び", "bu":"ぶ", "be":"べ","bo":"ぼ",
                                          "Ba":"ば", "Bi":"び", "Bu":"ぶ", "Be":"べ","Bo":"ぼ",
                                          "pa":"ぱ", "pi":"ぴ", "pu":"ぷ", "pe":"ぺ","po":"ぽ",
                                          "Pa":"ぱ", "Pi":"ぴ", "Pu":"ぷ", "Pe":"ぺ","Po":"ぽ"])
    
    static let katakana = Alphabet(easy: ["a":"ア", "i":"イ", "u":"ウ", "e":"エ", "o":"オ",
                                          "A":"ア", "I":"イ", "U":"ウ", "E":"エ", "O":"オ",
                                          "ka":"カ", "ki":"キ", "ku":"ク", "ke":"ケ", "ko":"コ",
                                          "Ka":"カ", "Ki":"キ", "Ku":"ク", "Ke":"ケ", "Ko":"コ",
                                          "sa":"サ", "shi":"シ", "su":"ス", "se":"セ", "so":"ソ",
                                          "Sa":"サ", "Shi":"シ", "Su":"ス", "Se":"セ", "So":"ソ",
                                          "ta":"ソ", "chi":"チ", "tsu":"ツ", "te":"テ", "to":"ト",
                                          "Ta":"ソ", "Chi":"チ", "Tsu":"ツ", "Te":"テ", "To":"ト",
                                          "na":"ナ", "ni":"ニ", "nu":"ヌ", "ne":"ネ", "no":"ノ",
                                          "Na":"ナ", "Ni":"ニ", "Nu":"ヌ", "Ne":"ネ", "No":"ノ"],
                                   medium: ["ha":"ハ", "hi":"ヒ", "fu":"フ", "he":"ヘ", "ho":"ホ",
                                            "Ha":"ハ", "Hi":"ヒ", "Fu":"フ", "He":"ヘ", "Ho":"ホ",
                                            "ma":"マ", "mi":"ミ", "mu":"ム", "me":"メ", "mo":"モ",
                                            "Ma":"マ", "Mi":"ミ", "Mu":"ム", "Me":"メ", "Mo":"モ",
                                            "ya":"ヤ", "yu":"ユ", "yo":"ヨ",
                                            "Ya":"ヤ", "Yu":"ユ", "Yo":"ヨ",
                                            "ra":"ラ", "ri":"リ", "ru":"ル", "re":"レ", "ro":"ロ",
                                            "Ra":"ラ", "Ri":"リ", "Ru":"ル", "Re":"レ", "Ro":"ロ",
                                            "wa":"ワ", "wo":"ヲ", "n":"ン",
                                            "Wa":"ワ", "Wo":"ヲ", "N":"ン"],
                                   hard: ["ga":"ガ", "gi":"ギ", "gu":"グ", "ge":"ゲ","go":"ゴ",
                                          "Ga":"ガ", "Gi":"ギ", "Gu":"グ", "Ge":"ゲ","Go":"ゴ",
                                          "za":"ザ", "ji":"ジ", "zu":"ズ", "ze":"ゼ","zo":"ゾ",
                                          "Za":"ザ", "Ji":"ジ", "Zu":"ズ", "Ze":"ゼ","Zo":"ゾ",
                                          "da":"ダ", "di":"ヂ", "zhu":"ヅ", "de":"デ","do":"ド",
                                          "Da":"ダ", "Di":"ヂ", "Zhu":"ヅ", "De":"デ","Do":"ド",
                                          "ba":"バ", "bi":"ビ", "bu":"ブ", "be":"ベ","bo":"ボ",
                                          "Ba":"バ", "Bi":"ビ", "Bu":"ブ", "Be":"ベ","Bo":"ボ",
                                          "pa":"パ", "pi":"ピ", "pu":"プ", "pe":"ペ","po":"ポ",
                                          "Pa":"パ", "Pi":"ピ", "Pu":"プ", "Pe":"ペ","Po":"ポ"])
    
}


