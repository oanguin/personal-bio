module Pages.Home_ exposing (view)

import Header exposing (headerLayout)
import Html exposing (Html)
import Html.Attributes as Attr
import Pages.AboutMe exposing (aboutMe)
import Shared exposing (Msg)
import View exposing (View)


view : View msg
view =
    { title = "Homepage"
    , body =
        headerLayout
            [ intro
            ]
    }


intro : Html msg
intro =
    Html.div [ Attr.class "intro" ]
        [ Html.span [] [ banner ]
        , Html.span [] [ welcomeMsg ]
        ]


banner : Html msg
banner =
    Html.img
        [ Attr.src "/images/desktop-banner.jpeg", Attr.class "banner-image" ]
        []


welcomeMsg : Html msg
welcomeMsg =
    Html.span [ Attr.class "welcome" ] [ Html.text "Welcome to Oneal's Professional Bio website." ]
