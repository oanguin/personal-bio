module Header exposing (headerLayout)

import Gen.Route as Route exposing (Route)
import Html exposing (Html)
import Html.Attributes as Attr


headerLayout : List (Html msg) -> List (Html msg)
headerLayout children =
    [ Html.div [ Attr.class "container" ]
        [ Html.header [ Attr.class "navbar" ]
            [ viewLink "Home" Route.Home_
            , viewLink "About Me" Route.AboutMe
            ]
        , Html.main_ [] children
        ]
    ]


viewLink : String -> Route -> Html msg
viewLink title route =
    Html.a
        [ Attr.href (Route.toHref route)
        , Attr.class "menu_item"
        ]
        [ Html.text title ]
