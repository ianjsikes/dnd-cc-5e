module Character.Update exposing (..)

import Character.Messages exposing (Msg(..))
import Character.Models exposing (Character)


update : Msg -> Character -> ( Character, Cmd Msg )
update msg character =
    case msg of
        _ ->
            ( character, Cmd.none )
