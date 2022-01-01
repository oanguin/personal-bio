module Pages.AboutMe exposing (aboutMe, view)

import Header exposing (headerLayout)
import Html exposing (..)
import Html.Attributes as Attr
import View exposing (View)


view : View msg
view =
    { title = "About Me"
    , body =
        headerLayout
            [ aboutMe
            ]
    }


aboutMe : Html msg
aboutMe =
    Html.ul [ Attr.class "about-me list-group list-group-flush" ]
        [ aboutMeItem "Name" "Oneal Anguin"
        , aboutMeItem "Profession" "Software Engineer"
        , aboutMeItem "Moto" "While it is impossible to be omniscient; it is possible to have an insatiable thrist for knowledge."
        , aboutMeItem "Employer" "Education First"
        ]


aboutMeItem : String -> String -> Html msg
aboutMeItem label description =
    Html.li [ Attr.class "list-group-item list-group-item-info" ]
        [ Html.i [ Attr.class "bi bi-vector-pen" ] []
        , Html.span [ Attr.class "about-me-label" ] [ Html.text label ]
        , Html.text ": "
        , Html.text description
        ]
