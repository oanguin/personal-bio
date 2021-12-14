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
        [ Html.li [ Attr.class "list-group-item" ] [ Html.text "Name: Oneal Anguin" ]
        , Html.li [ Attr.class "list-group-item" ] [ Html.text "Profession: Software Engineer" ]
        , Html.li [ Attr.class "list-group-item" ] [ Html.text "Employer: Education First" ]
        ]
