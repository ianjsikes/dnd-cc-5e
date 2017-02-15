module Character.Overview exposing (..)

import Html exposing (..)
import Character.Messages exposing (..)
import Character.Models exposing (Character)


view : Character -> Html Msg
view char =
    div []
        [ text ("Name: " ++ char.name)
        , text ("Player Name: " ++ char.playerName)
        , text ("Age: " ++ (toString char.age))
        , text ("Race: " ++ (toString char.race))
        ]
