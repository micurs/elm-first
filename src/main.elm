module Main exposing (..)

import Browser
import Html exposing (Html, div, span, text, Attribute)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style)

import MyButton exposing (myButton)


main =
  Browser.sandbox {
    init = initialize, update = update, view = view
  }

type alias Model = Int

initialize : Model

initialize = 0

-- UPDATE

type Msg = Inc | Dec

update : Msg -> Model -> Model

update msg model =
  case msg of
    Inc ->
      model + 1
    Dec ->
      model - 1

-- VIEW

mainStyle : Attribute msg
mainStyle =
    style "padding" "1rem"

elmStyle = [
  style "border" "solid 5px red",
  style "margin" "50px",
  style "padding" "6px"
  ]

view : Model -> Html Msg
view model =
  div
    [ mainStyle ]
    [ myButton
      [ onClick Dec ]
      "Remove"
    , span
        []
        [ text (String.fromInt model) ]
    , myButton
        [ onClick Inc ]
        "Add"
    ]
