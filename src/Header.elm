module Header exposing (headerLayout)

import Gen.Route as Route exposing (Route)
import Html exposing (Html)
import Html.Attributes as Attr


headerLayout : List (Html msg) -> List (Html msg)
headerLayout children =
    [ Html.div [ Attr.class "container parent" ]
        [ Html.nav [ Attr.class "navbar navbar-expand-lg navbar-light bg-white" ]
            [ Html.div [ Attr.class "container" ]
                [ Html.a [ Attr.class "navbar-brand", Attr.href "/" ]
                    [ Html.img [ Attr.src "/images/penguin.png", Attr.alt "Logo", Attr.width 50, Attr.height 40 ] [] ]
                , Html.ul [ Attr.class "navbar-nav me-auto mb-2 mb-lg-0" ]
                    [ viewLink "Home" Route.Home_
                    , viewLink "About Me" Route.AboutMe
                    , viewLink "Projects" Route.Projects
                    ]
                ]
            ]
        , Html.main_ [] children
        ]
    ]



-- TODO Make the links look different depending on the page using either class active or something else


viewLink : String -> Route -> Html msg
viewLink title route =
    Html.li [ Attr.class "nav-item" ]
        [ Html.a
            [ Attr.href (Route.toHref route)
            , Attr.class "menu_item nav-link active"
            ]
            [ Html.text title ]
        ]
