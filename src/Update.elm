module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Character.Update
import Routing exposing (parseLocation)
import Navigation


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ShowOverview ->
            ( model, Navigation.newUrl "#overview" )

        CharacterMsg subMsg ->
            let
                ( updatedCharacter, cmd ) =
                    Character.Update.update subMsg model.character
            in
                ( { model | character = updatedCharacter }, Cmd.map CharacterMsg cmd )

        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )
