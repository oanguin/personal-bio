module Pages.AboutMe exposing (aboutMe, page, view)

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
        headerLayout request [ aboutMe ]
    }


aboutMe : Html msg
aboutMe =
    Html.ul [ Attr.class "about-me list-group list-group-flush" ]
        [ aboutMeItem "Name" "Oneal Anguin"
        , aboutMeItem "Profession" "Software Architect"
        , aboutMeItem "Moto" "While it is impossible to be omniscient; it is possible to have an insatiable thrist for knowledge."
        , aboutMeItem "Employer" "Guidewire"
        ]


aboutMeItem : String -> String -> Html msg
aboutMeItem label description =
    Html.li [ Attr.class "list-group-item list-group-item-info" ]
        [ Html.i [ Attr.class "bi bi-vector-pen" ] []
        , Html.span [ Attr.class "about-me-label" ] [ Html.text label ]
        , Html.text ": "
        , Html.text description
        ]
