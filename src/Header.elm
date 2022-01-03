module Header exposing (headerLayout)

import Gen.Route as Route exposing (Route)
import Html exposing (Attribute, Html)
import Html.Attributes as Attr
import Request exposing (Request)


headerLayout : Request -> List (Html msg) -> List (Html msg)
headerLayout request children =
    [ Html.div [ Attr.class "container parent" ]
        [ Html.nav [ Attr.class "navbar navbar-expand-lg navbar-light bg-white" ]
            [ Html.div [ Attr.class "container" ]
                [ Html.a [ Attr.class "navbar-brand", Attr.href "/" ]
                    [ Html.img [ Attr.src "/images/penguin.png", Attr.alt "Logo", Attr.width 50, Attr.height 40 ] [] ]
                , Html.ul [ Attr.class "navbar-nav me-auto mb-2 mb-lg-0" ]
                    [ viewLink "Home" Route.Home_ (isActivePage request Route.Home_)
                    , viewLink "About Me" Route.AboutMe (isActivePage request Route.AboutMe)
                    , viewLink "Projects" Route.Projects (isActivePage request Route.Projects)
                    ]
                ]
            ]
        , Html.main_ [] children
        ]
    ]



-- TODO Make the links look different depending on the page using either class active or something else


isActivePage : Request -> Route -> Bool
isActivePage request route =
    request.route == route


viewLink : String -> Route -> Bool -> Html msg
viewLink title route activePage =
    Html.li [ Attr.class "nav-item" ]
        [ Html.a
            (createAttributeList activePage route)
            [ Html.text title ]
        ]


classString : Bool -> String
classString activePage =
    if activePage then
        "menu_item nav-link active"

    else
        "menu_item nav-link"


createAttributeList : Bool -> Route -> List (Attribute msg)
createAttributeList activePage route =
    let
        attributeList =
            [ Attr.href (Route.toHref route) ]

        appendAttributes : List (Attribute msg)
        appendAttributes =
            if activePage then
                [ Attr.class (classString activePage), Attr.attribute "aria-current" "page" ] ++ attributeList

            else
                Attr.class (classString activePage) :: attributeList
    in
    appendAttributes
