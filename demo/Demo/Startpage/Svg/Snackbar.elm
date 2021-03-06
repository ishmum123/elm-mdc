module Demo.Startpage.Svg.Snackbar exposing (view)

import Html exposing (Html)
import Svg exposing (defs, desc, feColorMatrix, feGaussianBlur, feMerge, feMergeNode, feOffset, filter, g, mask, path, rect, svg, text, text_, title, tspan, use)
import Svg.Attributes exposing (d, dx, dy, fill, fillOpacity, fillRule, filterUnits, fontFamily, fontSize, fontWeight, height, id, in_, letterSpacing, opacity, result, stdDeviation, stroke, strokeWidth, transform, type_, values, version, viewBox, width, x, xlinkHref, y)


view : Html msg
view =
    svg [ viewBox "0 0 180 180", version "1.1" ]
        [ title []
            [ text "snackbar_180px" ]
        , desc []
            [ text "Created with Sketch." ]
        , defs []
            [ rect [ id "__3L_YbbP__path-1", x "0", y "0", width "180", height "180" ]
                []
            , path [ d "M4,0 L356,0 C358.209139,-4.05812251e-16 360,1.790861 360,4 L360,44 C360,46.209139 358.209139,48 356,48 L4,48 C1.790861,48 2.705415e-16,46.209139 0,44 L0,4 C-2.705415e-16,1.790861 1.790861,4.05812251e-16 4,0 Z", id "__3L_YbbP__path-3" ]
                []
            , filter [ x "-11.8%", y "-67.7%", width "123.6%", height "277.1%", filterUnits "objectBoundingBox", id "__3L_YbbP__filter-5" ]
                [ feOffset [ dx "0", dy "3", in_ "SourceAlpha", result "shadowOffsetOuter1" ]
                    []
                , feGaussianBlur [ stdDeviation "2.5", in_ "shadowOffsetOuter1", result "shadowBlurOuter1" ]
                    []
                , feColorMatrix [ values "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0", type_ "matrix", in_ "shadowBlurOuter1", result "shadowMatrixOuter1" ]
                    []
                , feOffset [ dx "0", dy "1", in_ "SourceAlpha", result "shadowOffsetOuter2" ]
                    []
                , feGaussianBlur [ stdDeviation "9", in_ "shadowOffsetOuter2", result "shadowBlurOuter2" ]
                    []
                , feColorMatrix [ values "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.12 0", type_ "matrix", in_ "shadowBlurOuter2", result "shadowMatrixOuter2" ]
                    []
                , feOffset [ dx "0", dy "6", in_ "SourceAlpha", result "shadowOffsetOuter3" ]
                    []
                , feGaussianBlur [ stdDeviation "5", in_ "shadowOffsetOuter3", result "shadowBlurOuter3" ]
                    []
                , feColorMatrix [ values "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.14 0", type_ "matrix", in_ "shadowBlurOuter3", result "shadowMatrixOuter3" ]
                    []
                , feMerge []
                    [ feMergeNode [ in_ "shadowMatrixOuter1" ]
                        []
                    , feMergeNode [ in_ "shadowMatrixOuter2" ]
                        []
                    , feMergeNode [ in_ "shadowMatrixOuter3" ]
                        []
                    ]
                ]
            ]
        , g [ id "__3L_YbbP__snackbar_180px", stroke "none", strokeWidth "1", fill "none", fillRule "evenodd" ]
            [ mask [ id "__3L_YbbP__mask-2", fill "white" ]
                [ use [ xlinkHref "#__3L_YbbP__path-1" ]
                    []
                ]
            , use [ id "__3L_YbbP__Mask", fill "#FAFAFA", xlinkHref "#__3L_YbbP__path-1" ]
                []
            , g [ id "__3L_YbbP__Snackbar-/-Single", Svg.Attributes.mask "url(#__3L_YbbP__mask-2)" ]
                [ g [ transform "translate(16.000000, 66.000000)" ]
                    [ mask [ id "__3L_YbbP__mask-4", fill "white" ]
                        [ use [ xlinkHref "#__3L_YbbP__path-3" ]
                            []
                        ]
                    , g [ id "__3L_YbbP__Surface", stroke "none", fill "none" ]
                        [ use [ fill "black", fillOpacity "1", Svg.Attributes.filter "url(#__3L_YbbP__filter-5)", xlinkHref "#__3L_YbbP__path-3" ]
                            []
                        , use [ fill "#FAFAFA", fillRule "evenodd", xlinkHref "#__3L_YbbP__path-3" ]
                            []
                        ]
                    , g [ id "__3L_YbbP__?-/-Color-/-Icons-/-Black-/-Active", stroke "none", fill "none", Svg.Attributes.mask "url(#__3L_YbbP__mask-4)", fillRule "evenodd", opacity "0.87" ]
                        [ rect [ id "__3L_YbbP__Rectangle-13", fill "#000000", x "0", y "0", width "360", height "48" ]
                            []
                        ]
                    , g [ id "__3L_YbbP__Text-/-Body-2-/-P---Dark", stroke "none", fill "none", Svg.Attributes.mask "url(#__3L_YbbP__mask-4)", fontFamily "Roboto-Regular, Roboto", fontSize "14", fontWeight "normal", letterSpacing "0.25" ]
                        [ g [ transform "translate(16.000000, 14.000000)", id "__3L_YbbP__Body-2" ]
                            [ text_ []
                                [ tspan [ x "0", y "13", fill "#FFFFFF" ]
                                    [ text "Greyhound divisively he" ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
