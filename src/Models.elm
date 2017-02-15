module Models exposing (..)

import Routing


type alias Model =
    { message : String
    , route : Routing.Route
    }


initialModel : Routing.Route -> Model
initialModel route =
    { message = "Hello"
    , route = route
    }
