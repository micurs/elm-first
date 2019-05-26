module MyButton exposing (myButton)

import Html exposing (Html, button, text, Attribute)
import Html.Attributes exposing (style)

buttonStyle = [
  style "margin" "10px",
  style "padding" "6px"
  ]

myButton moreAttributes contentText =
  button
    ( List.append buttonStyle moreAttributes )
    [ text contentText ]
