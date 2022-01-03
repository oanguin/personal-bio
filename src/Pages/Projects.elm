module Pages.Projects exposing (Model, Msg, page)

import Data.Projects exposing (Project, projects)
import Gen.Params.Projects exposing (Params)
import Header exposing (headerLayout)
import Html exposing (Html)
import Html.Attributes as Attr
import Page
import Request exposing (Request)
import Shared
import View exposing (View)


page : Shared.Model -> Request.With Params -> Page.With Model Msg
page shared request =
    Page.sandbox
        { init = init
        , update = update
        , view = view request
        }



-- INIT


type alias Model =
    List Project


init : Model
init =
    projects



-- UPDATE


type Msg
    = ReplaceMe


update : Msg -> Model -> Model
update msg model =
    case msg of
        ReplaceMe ->
            model



-- VIEW


view : Request -> Model -> View Msg
view request model =
    { title = "Projects"
    , body =
        headerLayout request
            [ Html.div [ Attr.class "row" ] (model |> List.map projectItems)
            ]
    }


projectItems : Project -> Html Msg
projectItems project =
    Html.div [ Attr.class "col-sm-6", Attr.style "padding-top" "2em" ]
        [ Html.div [ Attr.class "card bg-light h-100" ]
            [ Html.div [ Attr.class "card-header" ] [ Html.text project.name ]
            , Html.div [ Attr.class "card-body" ]
                [ Html.h6 [ Attr.class "card-title" ] [ Html.text project.description ]
                , project.technologies |> technologyList
                ]
            , Html.div [ Attr.class "card-footer" ] [ Html.a [ Attr.href project.link, Attr.target "_blank" ] [ Html.text "Project Link" ] ]
            ]
        ]


technologyList : List String -> Html Msg
technologyList technologies =
    Html.ul [ Attr.class "list-group list-group-flush" ] (technologies |> List.map technologyItem)


technologyItem : String -> Html Msg
technologyItem technology =
    Html.li [ Attr.class "list-group-item list-group-item-secondary" ] [ Html.text technology ]
