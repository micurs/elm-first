module MyButton exposing (myButton)

import Html exposing (Html, button, text, Attribute)
import Html.Attributes exposing (style)

buttonStyle = [
  style "min-width" "100px",
  style "margin" "18px",
  style "padding" "6px"
  ]

myButton moreAttributes contentText =
  button
    ( List.append buttonStyle moreAttributes )
    [ text contentText ]
