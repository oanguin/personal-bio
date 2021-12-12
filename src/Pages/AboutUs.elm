module Pages.AboutUs exposing (view)

import Header exposing (headerLayout)
import Html exposing (..)
import View exposing (View)


view : View msg
view =
    { title = "About Us"
    , body =
        headerLayout
            [ div []
                [ text "Oneal Anguin" ]
            ]
    }
