module Pages.Home_ exposing (view)

import Header exposing (headerLayout)
import Html
import View exposing (View)


view : View msg
view =
    { title = "Homepage"
    , body =
        headerLayout
            [ Html.text "Hello, world!" ]
    }
