module CompileFixtures (..) where

import Css exposing (..)
import Css.Elements exposing (..)


pageBackground : Color
pageBackground =
  rgb 100 90 128


pageDefaultText : Color
pageDefaultText =
  rgb 40 35 76


type CssClasses
  = Hidden


type CssIds
  = Page


unstyledDiv : Stylesheet
unstyledDiv =
  stylesheet
    { name = "" }
    [ div [] ]


dreamwriter : Stylesheet
dreamwriter =
  stylesheet
    { name = "dreamwriter" }
    [ (each [ html, body ])
        [ width (pct 100)
        , height (pct 100)
        , boxSizing borderBox
        , padding zero
        , margin zero
        ]
    , body
        [ minWidth (px 1280)
        , overflowX auto
        , children
            [ div
                [ width (pct 100)
                , height (pct 100)
                ]
            ]
        ]
    , ((.) Hidden)
        [ (display none) |> important ]
    , ((#) Page)
        [ width (pct 100)
        , height (pct 100)
        , boxSizing borderBox
        , margin zero
        , padding (px 8)
        , backgroundColor pageBackground
        , color pageDefaultText
        ]
    ]
