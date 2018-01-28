module Numbers exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type alias Model =
    { items : List Int
    }


type Msg
    = Increment


update msg model =
    case msg of
        Increment ->
            { model | items = model.items } ! []


view model =
    div []
        [ button [] [ text "Add Number" ]
        , div [] (List.map (\t -> div [] [ text (toString t) ]) model.items)
        ]


initialModel =
    { items = [ 0, 1, 2, 3, 4 ]
    }


main =
    program
        { init = initialModel ! []
        , update = update
        , view = view
        , subscriptions = always Sub.none
        }
