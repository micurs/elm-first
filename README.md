# A very first app in Elm

This is my very first app written in Elm (v.0.19).

It implements a counter and two buttons to increase and decrease its value.
Supersimple, however, it goes one small step further than most initial
Elm examples as it includes a custom `MyButton` module with its own style.

You can install elm locally and use yarn to run `elm react`.

```
yarn install
yarn start
```

The simple module defining the `myButton` function component is in `mybutton.elm`.

It uses its own style while appending the attributes passed as parameters to the `Html.button` function:

```elm
myButton moreAttributes contentText =
  button
    ( List.append buttonStyle moreAttributes )
    [ text contentText ]
```

> Note: use of parenthesis `(` `)` to make sure the first argument of the `button`
function is interpreted correctly as the result of the `List.append` call.

