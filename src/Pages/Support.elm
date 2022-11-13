module Pages.Support exposing (support, page, view)

import Header exposing (headerLayout)
import Html exposing (..)
import Html.Attributes as Attr
import Page exposing (Page)
import Request exposing (Request)
import Shared
import View exposing (View)


page : Shared.Model -> Request -> Page
page shared request =
    Page.static
        { view = view request
        }


view : Request -> View msg
view request =
    { title = "About Me"
    , body =
        headerLayout request [ support ]
    }


support : Html msg
support =
    Html.ul [ Attr.class "about-me list-group list-group-flush" ]
        [ supportItem "Developer" "Oneal Anguin"
        , supportItem "Phone Number" "+44 07913 760326"
        , supportItem "Email" "onealanguin@gmail.com"
        , supportItem "Address" "77 Blyth Road, E17 8HS, London, UK"
        ]


supportItem : String -> String -> Html msg
supportItem label description =
    Html.li [ Attr.class "list-group-item list-group-item-info" ]
        [ Html.i [ Attr.class "bi bi-vector-pen" ] []
        , Html.span [ Attr.class "about-me-label" ] [ Html.text label ]
        , Html.text ": "
        , Html.text description
        ]
