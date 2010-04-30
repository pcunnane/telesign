module Telesign
  module Language
    ARABIC          = "arabic"
    AUSTRALIAN      = "australian"
    CANADIAN_FRENCH = "canadianfrench"
    CANTONESE       = "cantonese"
    CHINESE         = "chinese"
    CROATIAN        = "croatian"
    CZECH           = "czech"
    DANISH          = "danish"
    DUTCH           = "dutch"
    EGYPTIAN        = "egyptian"
    ENGLISH_UK      = "englishuk"
    ESTONIAN        = "estonian"
    FINNISH         = "finnish"
    FRENCH          = "french"
    GERMAN          = "german"
    GREEK           = "greek"
    HEBREW          = "hebrew"
    HINDI           = "hindi"
    HUNGARIAN       = "hungarian"
    INDONESIAN      = "indonesian"
    ITALIAN         = "italian"
    JAPANESE        = "japanese"
    KOREAN          = "korean"
    NORWEGIAN       = "norwegian"
    POLISH          = "polish"
    PORTUGUESE      = "portuguese"
    PORTUGUESE_EU   = "portugueseeu"
    ROMANIAN        = "romanian"
    RUSSIAN         = "russian"
    SLOVAK          = "slovak"
    SPANISH         = "spanish"
    SPANISH_EU      = "spanisheu"
    SWEDISH         = "swedish"
    THAI            = "thai"
    TURKISH         = "turkish"
    UKRAINIAN       = "ukrainian"
    VIETNAMESE      = "vietnamese"
    
    LOCALE_LANGUAGES = {
      :"ar-AR" => ARABIC,
      :"da-DK" => DANISH,
      :"de-DE" => GERMAN,
      :"el-EL" => GREEK,
      :"en-US" => nil,
      :"es-ES" => SPANISH_EU,
      :"es-LA" => SPANISH,
      :"fr-FR" => FRENCH,
      :"it-IT" => ITALIAN,
      :"iw-IW" => HEBREW,
      :"ja-JP" => JAPANESE,
      :"ko-KR" => KOREAN,
      :"nl-NL" => DUTCH,
      :"pl-PL" => POLISH,
      :"pt-BR" => PORTUGUESE,
      :"ru-RU" => RUSSIAN,
      :"sv-SE" => SWEDISH,
      :"tr-TR" => TURKISH,
      :"zh-CN" => CHINESE
    }
    
    def self.for_locale(locale)
      LOCALE_LANGUAGES[locale.to_sym]
    end
  end
end