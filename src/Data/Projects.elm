module Data.Projects exposing (..)


type alias Project =
    { name : String
    , link : String
    , description : String
    , technologies : List String
    }


projects : List Project
projects =
    [ { name = "English Live Marketing Web Site"
      , description = "A marketing website used to attract customers."
      , link = "https://englishlive.ef.com/it-it/"
      , technologies = [ "NextJS", "React", "CSS" ]
      }
    , { name = "National Training Calendar"
      , description = "A training calendar used by businesses to schedule training seminars."
      , link = "https://calendar.thehoneybunfoundation.com/"
      , technologies = [ "PHP", "Vue.js", "Laravel" ]
      }
    , { name = "Personal Bio Website"
      , description = "A website about my professional endeavours."
      , link = "/"
      , technologies = [ "Elm", "Bootstrap" ]
      }
    , { name = "IoT Wifi Scanning Application"
      , description =
            "A masters degree project. This project allows mobile devices to create WiFi fingerprints; "
                ++ "which allows offline location based services to work even when GPS is not available."
      , link = "https://www.youtube.com/watch?v=8GY3CIBHXp4"
      , technologies = [ "Java", "Android", "GraphQL" ]
      }
    , { name = "Android Paginated Table Component"
      , description =
            "A Android paginated component."
                ++ "This component allows developers to create dynamic customizable tables with embeded images."
      , link = "https://github.com/ojinxy/AndroidComponents"
      , technologies = [ "Java", "Android" ]
      }
    , { name = "Agrilinkages"
      , description = "A tourism enhancement project used to provide markets to farmers. This site allows customers to acces fresh produce from local farmers."
      , link = "https://www.agrilinkages.gov.jm"
      , technologies = [ "AWS Light Sail", "Magento", "Codazon", "MySQL", "PHP" ]
      }
    ]
