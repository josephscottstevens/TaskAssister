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
            { model | fruits = "a fruit" :: model.fruits } ! []


view model =
    div []
        [ button [ onClick AddFruit ] [ text "Add Fruit" ]
        , div [] (List.map (\t -> div [] [ text t ]) model.fruits)
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
