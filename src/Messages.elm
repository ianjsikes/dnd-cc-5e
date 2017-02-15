module Messages exposing (..)

import Navigation exposing (Location)
import Character.Messages


type Msg
    = CharacterMsg Character.Messages.Msg
    | ShowOverview
    | OnLocationChange Location
