module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Model =
    { count : Int
    }


type Msg
    = Increment


update msg model =
    case msg of
        Increment ->
            { model | count = model.count + 1 } ! []


view model =
    div []
        [ div [] [ text (toString model.count) ]
        , button [] [ text "Increment" ]
        ]


initialModel =
    { count = 0
    }


main =
    program
        { init = initialModel ! []
        , update = update
        , view = view
        , subscriptions = always Sub.none
        }
