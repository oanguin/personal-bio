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
    Html.div [ Attr.class "about-me" ]
        [ Html.span [] [ Html.text "Name: Oneal Anguin" ]
        , Html.span [] [ Html.text "Profession: Software Engineer" ]
        , Html.span [] [ Html.text "Employer: Education First" ]
        ]
