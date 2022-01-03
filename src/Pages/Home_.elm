module Pages.Home_ exposing (page, view)

import Header exposing (headerLayout)
import Html exposing (Html)
import Html.Attributes as Attr
import Page exposing (Page)
import Pages.AboutMe exposing (aboutMe)
import Request exposing (Request)
import Shared exposing (Msg)
import View exposing (View)


page : Shared.Model -> Request -> Page
page shared request =
    Page.static
        { view = view request
        }


view : Request -> View msg
view request =
    { title = "Homepage"
    , body =
        headerLayout request [ intro ]
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
