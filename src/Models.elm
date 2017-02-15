module Models exposing (..)

import Routing
import Character.Models exposing (Character, character)


type alias Model =
    { message : String
    , route : Routing.Route
    , character : Character
    }


initialModel : Routing.Route -> Model
initialModel route =
    { message = "Hello"
    , route = route
    , character = character
    }
