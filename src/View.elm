module View exposing (..)

import Html exposing (Html, div, img, text)
import Messages exposing (Msg)
import Models exposing (Model)
import Routing exposing (Route(..))


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        HomeRoute ->
            homePage model

        NotFoundRoute ->
            notFoundView


homePage : Model -> Html Msg
homePage model =
    div []
        [ text model.message ]


notFoundView : Html Msg
notFoundView =
    div []
        [ text "Not found" ]
