module View exposing (..)

import Html exposing (Html, div, img, button, text)
import Html.Events exposing (onClick)
import Messages exposing (Msg(..))
import Models exposing (Model)
import Routing exposing (Route(..))
import Character.Overview


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        HomeRoute ->
            homePage model

        OverviewRoute ->
            Html.map CharacterMsg (Character.Overview.view model.character)

        NotFoundRoute ->
            notFoundView


homePage : Model -> Html Msg
homePage model =
    div []
        [ text model.message
        , button [ onClick ShowOverview ]
            [ text "Overview" ]
        ]


notFoundView : Html Msg
notFoundView =
    div []
        [ text "Not found"
        ]
