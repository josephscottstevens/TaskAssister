module Numbers exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type alias Model =
    { fruits : List String
    }


type Msg
    = AddFruit


update msg model =
    case msg of
        AddFruit ->
            { model | fruits = model.fruits } ! []


view model =
    div []
        [ button [] [ text "Add Number" ]
        , div [] (List.map (\t -> div [] [ text (toString t) ]) model.fruits)
        ]


initialModel =
    { fruits = [ "Apple", "Grapefruit", "Banana", "Melon" ]
    }


main =
    program
        { init = initialModel ! []
        , update = update
        , view = view
        , subscriptions = always Sub.none
        }
