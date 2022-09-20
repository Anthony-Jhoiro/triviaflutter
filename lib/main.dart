import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/pages/home/home_page.dart';
import 'package:json_theme/src/codec/theme_decoder.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeDecoder.decodeThemeData(
          {
            "applyElevationOverlayColor": false,
            "backgroundColor": "#fffdfbff",
            "bottomAppBarColor": "#fffdfbff",
            "brightness": "light",
            "buttonTheme": {
              "alignedDropdown": false,
              "colorScheme": {
                "background": "#fffdfbff",
                "brightness": "light",
                "error": "#ffba1a1a",
                "errorContainer": "#ffffdad6",
                "inversePrimary": "#ffa9c7ff",
                "inverseSurface": "#ff2f3033",
                "onBackground": "#ff1a1b1e",
                "onError": "#ffffffff",
                "onErrorContainer": "#ff410002",
                "onInverseSurface": "#fff1f0f4",
                "onPrimary": "#ffffffff",
                "onPrimaryContainer": "#ff001b3d",
                "onSecondary": "#ffffffff",
                "onSecondaryContainer": "#ff121c2b",
                "onSurface": "#ff1a1b1e",
                "onSurfaceVariant": "#ff44474e",
                "onTertiary": "#ffffffff",
                "onTertiaryContainer": "#ff28132f",
                "outline": "#ff74777f",
                "primary": "#ff285ea7",
                "primaryContainer": "#ffd6e3ff",
                "secondary": "#ff555f71",
                "secondaryContainer": "#ffd9e3f9",
                "shadow": "#ff000000",
                "surface": "#fffdfbff",
                "surfaceTint": "#ff285ea7",
                "surfaceVariant": "#ffe0e2ec",
                "tertiary": "#ff6f5675",
                "tertiaryContainer": "#fff9d8fd"
              },
              "height": 36,
              "layoutBehavior": "padded",
              "minWidth": 88,
              "padding": {
                "bottom": 16,
                "left": 32,
                "right": 32,
                "top": 16
              },
              "shape": {
                "borderRadius": {
                  "bottomLeft": {
                    "type": "elliptical",
                    "x": 2,
                    "y": 2
                  },
                  "bottomRight": {
                    "type": "elliptical",
                    "x": 2,
                    "y": 2
                  },
                  "topLeft": {
                    "type": "elliptical",
                    "x": 2,
                    "y": 2
                  },
                  "topRight": {
                    "type": "elliptical",
                    "x": 2,
                    "y": 2
                  },
                  "type": "only"
                },
                "side": {
                  "color": "#ff000000",
                  "style": "none",
                  "width": 0
                },
                "type": "rounded"
              },
              "textTheme": "normal"
            },
            "canvasColor": "#fffdfbff",
            "cardColor": "#fffdfbff",
            "colorScheme": {
              "background": "#fffdfbff",
              "brightness": "light",
              "error": "#ffba1a1a",
              "errorContainer": "#ffffdad6",
              "inversePrimary": "#ffa9c7ff",
              "inverseSurface": "#ff2f3033",
              "onBackground": "#ff1a1b1e",
              "onError": "#ffffffff",
              "onErrorContainer": "#ff410002",
              "onInverseSurface": "#fff1f0f4",
              "onPrimary": "#ffffffff",
              "onPrimaryContainer": "#ff001b3d",
              "onSecondary": "#ffffffff",
              "onSecondaryContainer": "#ff121c2b",
              "onSurface": "#ff1a1b1e",
              "onSurfaceVariant": "#ff44474e",
              "onTertiary": "#ffffffff",
              "onTertiaryContainer": "#ff28132f",
              "outline": "#ff74777f",
              "primary": "#ff285ea7",
              "primaryContainer": "#ffd6e3ff",
              "secondary": "#ff555f71",
              "secondaryContainer": "#ffd9e3f9",
              "shadow": "#ff000000",
              "surface": "#fffdfbff",
              "surfaceTint": "#ff285ea7",
              "surfaceVariant": "#ffe0e2ec",
              "tertiary": "#ff6f5675",
              "tertiaryContainer": "#fff9d8fd"
            },
            "dialogBackgroundColor": "#fffdfbff",
            "disabledColor": "#61000000",
            "dividerColor": "#1f1a1b1e",
            "errorColor": "#ffba1a1a",
            "focusColor": "#1f000000",
            "highlightColor": "#66bcbcbc",
            "hintColor": "#99000000",
            "hoverColor": "#0a000000",
            "iconTheme": {
              "color": "#dd000000"
            },
            "indicatorColor": "#ffffffff",
            "inputDecorationTheme": {
              "alignLabelWithHint": false,
              "filled": false,
              "floatingLabelAlignment": "start",
              "floatingLabelBehavior": "auto",
              "isCollapsed": false,
              "isDense": false
            },
            "materialTapTargetSize": "shrinkWrap",
            "platform": "linux",
            "primaryColor": "#ff285ea7",
            "primaryColorDark": "#ff1976d2",
            "primaryColorLight": "#ffbbdefb",
            "primaryIconTheme": {
              "color": "#ffffffff"
            },
            "primaryTextTheme": {
              "bodyLarge": {
                "color": "#ffffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 16,
                "inherit": true,
                "letterSpacing": 0.5,
                "textBaseline": "alphabetic"
              },
              "bodyMedium": {
                "color": "#ffffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 14,
                "inherit": true,
                "letterSpacing": 0.25,
                "textBaseline": "alphabetic"
              },
              "bodySmall": {
                "color": "#b3ffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 12,
                "inherit": true,
                "letterSpacing": 0.4,
                "textBaseline": "alphabetic"
              },
              "displayLarge": {
                "color": "#b3ffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w300",
                "fontSize": 96,
                "inherit": true,
                "letterSpacing": -1.5,
                "textBaseline": "alphabetic"
              },
              "displayMedium": {
                "color": "#b3ffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w300",
                "fontSize": 60,
                "inherit": true,
                "letterSpacing": -0.5,
                "textBaseline": "alphabetic"
              },
              "displaySmall": {
                "color": "#b3ffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 48,
                "inherit": true,
                "letterSpacing": 0,
                "textBaseline": "alphabetic"
              },
              "headlineLarge": {
                "color": "#b3ffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 40,
                "inherit": true,
                "letterSpacing": 0.25,
                "textBaseline": "alphabetic"
              },
              "headlineMedium": {
                "color": "#b3ffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 34,
                "inherit": true,
                "letterSpacing": 0.25,
                "textBaseline": "alphabetic"
              },
              "headlineSmall": {
                "color": "#ffffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 24,
                "inherit": true,
                "letterSpacing": 0,
                "textBaseline": "alphabetic"
              },
              "labelLarge": {
                "color": "#ffffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w500",
                "fontSize": 14,
                "inherit": true,
                "letterSpacing": 1.25,
                "textBaseline": "alphabetic"
              },
              "labelMedium": {
                "color": "#ffffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 11,
                "inherit": true,
                "letterSpacing": 1.5,
                "textBaseline": "alphabetic"
              },
              "labelSmall": {
                "color": "#ffffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 10,
                "inherit": true,
                "letterSpacing": 1.5,
                "textBaseline": "alphabetic"
              },
              "titleLarge": {
                "color": "#ffffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w500",
                "fontSize": 20,
                "inherit": true,
                "letterSpacing": 0.15,
                "textBaseline": "alphabetic"
              },
              "titleMedium": {
                "color": "#ffffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 16,
                "inherit": true,
                "letterSpacing": 0.15,
                "textBaseline": "alphabetic"
              },
              "titleSmall": {
                "color": "#ffffffff",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w500",
                "fontSize": 14,
                "inherit": true,
                "letterSpacing": 0.1,
                "textBaseline": "alphabetic"
              }
            },
            "scaffoldBackgroundColor": "#fffdfbff",
            "secondaryHeaderColor": "#ffe3f2fd",
            "selectedRowColor": "#fff5f5f5",
            "shadowColor": "#ff000000",
            "splashColor": "#66c8c8c8",
            "splashFactory": "splash",
            "textTheme": {
              "bodyLarge": {
                "color": "#dd000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 16,
                "inherit": true,
                "letterSpacing": 0.5,
                "textBaseline": "alphabetic"
              },
              "bodyMedium": {
                "color": "#dd000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 14,
                "inherit": true,
                "letterSpacing": 0.25,
                "textBaseline": "alphabetic"
              },
              "bodySmall": {
                "color": "#8a000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 12,
                "inherit": true,
                "letterSpacing": 0.4,
                "textBaseline": "alphabetic"
              },
              "displayLarge": {
                "color": "#8a000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w300",
                "fontSize": 96,
                "inherit": true,
                "letterSpacing": -1.5,
                "textBaseline": "alphabetic"
              },
              "displayMedium": {
                "color": "#8a000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w300",
                "fontSize": 60,
                "inherit": true,
                "letterSpacing": -0.5,
                "textBaseline": "alphabetic"
              },
              "displaySmall": {
                "color": "#8a000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 48,
                "inherit": true,
                "letterSpacing": 0,
                "textBaseline": "alphabetic"
              },
              "headlineLarge": {
                "color": "#8a000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 40,
                "inherit": true,
                "letterSpacing": 0.25,
                "textBaseline": "alphabetic"
              },
              "headlineMedium": {
                "color": "#8a000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 34,
                "inherit": true,
                "letterSpacing": 0.25,
                "textBaseline": "alphabetic"
              },
              "headlineSmall": {
                "color": "#dd000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 24,
                "inherit": true,
                "letterSpacing": 0,
                "textBaseline": "alphabetic"
              },
              "labelLarge": {
                "color": "#dd000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w500",
                "fontSize": 14,
                "inherit": true,
                "letterSpacing": 1.25,
                "textBaseline": "alphabetic"
              },
              "labelMedium": {
                "color": "#ff000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 11,
                "inherit": true,
                "letterSpacing": 1.5,
                "textBaseline": "alphabetic"
              },
              "labelSmall": {
                "color": "#ff000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 10,
                "inherit": true,
                "letterSpacing": 1.5,
                "textBaseline": "alphabetic"
              },
              "titleLarge": {
                "color": "#dd000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w500",
                "fontSize": 20,
                "inherit": true,
                "letterSpacing": 0.15,
                "textBaseline": "alphabetic"
              },
              "titleMedium": {
                "color": "#dd000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w400",
                "fontSize": 16,
                "inherit": true,
                "letterSpacing": 0.15,
                "textBaseline": "alphabetic"
              },
              "titleSmall": {
                "color": "#ff000000",
                "decoration": "none",
                "fontFamily": "Roboto",
                "fontFamilyFallback": [
                  "Ubuntu",
                  "Cantarell",
                  "DejaVu Sans",
                  "Liberation Sans",
                  "Arial"
                ],
                "fontWeight": "w500",
                "fontSize": 14,
                "inherit": true,
                "letterSpacing": 0.1,
                "textBaseline": "alphabetic"
              }
            },
            "toggleableActiveColor": "#ff555f71",
            "typography": {
              "black": {
                "bodyLarge": {
                  "color": "#dd000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "bodyMedium": {
                  "color": "#dd000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "bodySmall": {
                  "color": "#8a000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "displayLarge": {
                  "color": "#8a000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "displayMedium": {
                  "color": "#8a000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "displaySmall": {
                  "color": "#8a000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "headlineLarge": {
                  "color": "#8a000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "headlineMedium": {
                  "color": "#8a000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "headlineSmall": {
                  "color": "#dd000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "labelLarge": {
                  "color": "#dd000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "labelMedium": {
                  "color": "#ff000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "labelSmall": {
                  "color": "#ff000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "titleLarge": {
                  "color": "#dd000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "titleMedium": {
                  "color": "#dd000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "titleSmall": {
                  "color": "#ff000000",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                }
              },
              "dense": {
                "bodyLarge": {
                  "fontWeight": "w500",
                  "fontSize": 15,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "bodyMedium": {
                  "fontWeight": "w400",
                  "fontSize": 15,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "bodySmall": {
                  "fontWeight": "w400",
                  "fontSize": 13,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "displayLarge": {
                  "fontWeight": "w100",
                  "fontSize": 112,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "displayMedium": {
                  "fontWeight": "w400",
                  "fontSize": 56,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "displaySmall": {
                  "fontWeight": "w400",
                  "fontSize": 45,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "headlineLarge": {
                  "fontWeight": "w400",
                  "fontSize": 40,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "headlineMedium": {
                  "fontWeight": "w400",
                  "fontSize": 34,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "headlineSmall": {
                  "fontWeight": "w400",
                  "fontSize": 24,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "labelLarge": {
                  "fontWeight": "w500",
                  "fontSize": 15,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "labelMedium": {
                  "fontWeight": "w400",
                  "fontSize": 12,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "labelSmall": {
                  "fontWeight": "w400",
                  "fontSize": 11,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "titleLarge": {
                  "fontWeight": "w500",
                  "fontSize": 21,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "titleMedium": {
                  "fontWeight": "w400",
                  "fontSize": 17,
                  "inherit": false,
                  "textBaseline": "ideographic"
                },
                "titleSmall": {
                  "fontWeight": "w500",
                  "fontSize": 15,
                  "inherit": false,
                  "textBaseline": "ideographic"
                }
              },
              "englishLike": {
                "bodyLarge": {
                  "fontWeight": "w500",
                  "fontSize": 14,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "bodyMedium": {
                  "fontWeight": "w400",
                  "fontSize": 14,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "bodySmall": {
                  "fontWeight": "w400",
                  "fontSize": 12,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "displayLarge": {
                  "fontWeight": "w100",
                  "fontSize": 112,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "displayMedium": {
                  "fontWeight": "w400",
                  "fontSize": 56,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "displaySmall": {
                  "fontWeight": "w400",
                  "fontSize": 45,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "headlineLarge": {
                  "fontWeight": "w400",
                  "fontSize": 40,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "headlineMedium": {
                  "fontWeight": "w400",
                  "fontSize": 34,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "headlineSmall": {
                  "fontWeight": "w400",
                  "fontSize": 24,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "labelLarge": {
                  "fontWeight": "w500",
                  "fontSize": 14,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "labelMedium": {
                  "fontWeight": "w400",
                  "fontSize": 12,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "labelSmall": {
                  "fontWeight": "w400",
                  "fontSize": 10,
                  "inherit": false,
                  "letterSpacing": 1.5,
                  "textBaseline": "alphabetic"
                },
                "titleLarge": {
                  "fontWeight": "w500",
                  "fontSize": 20,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "titleMedium": {
                  "fontWeight": "w400",
                  "fontSize": 16,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "titleSmall": {
                  "fontWeight": "w500",
                  "fontSize": 14,
                  "inherit": false,
                  "letterSpacing": 0.1,
                  "textBaseline": "alphabetic"
                }
              },
              "tall": {
                "bodyLarge": {
                  "fontWeight": "w700",
                  "fontSize": 15,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "bodyMedium": {
                  "fontWeight": "w400",
                  "fontSize": 15,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "bodySmall": {
                  "fontWeight": "w400",
                  "fontSize": 13,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "displayLarge": {
                  "fontWeight": "w400",
                  "fontSize": 112,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "displayMedium": {
                  "fontWeight": "w400",
                  "fontSize": 56,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "displaySmall": {
                  "fontWeight": "w400",
                  "fontSize": 45,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "headlineLarge": {
                  "fontWeight": "w400",
                  "fontSize": 40,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "headlineMedium": {
                  "fontWeight": "w400",
                  "fontSize": 34,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "headlineSmall": {
                  "fontWeight": "w400",
                  "fontSize": 24,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "labelLarge": {
                  "fontWeight": "w700",
                  "fontSize": 15,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "labelMedium": {
                  "fontWeight": "w400",
                  "fontSize": 12,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "labelSmall": {
                  "fontWeight": "w400",
                  "fontSize": 11,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "titleLarge": {
                  "fontWeight": "w700",
                  "fontSize": 21,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "titleMedium": {
                  "fontWeight": "w400",
                  "fontSize": 17,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                },
                "titleSmall": {
                  "fontWeight": "w500",
                  "fontSize": 15,
                  "inherit": false,
                  "textBaseline": "alphabetic"
                }
              },
              "white": {
                "bodyLarge": {
                  "color": "#ffffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "bodyMedium": {
                  "color": "#ffffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "bodySmall": {
                  "color": "#b3ffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "displayLarge": {
                  "color": "#b3ffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "displayMedium": {
                  "color": "#b3ffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "displaySmall": {
                  "color": "#b3ffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "headlineLarge": {
                  "color": "#b3ffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "headlineMedium": {
                  "color": "#b3ffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "headlineSmall": {
                  "color": "#ffffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "labelLarge": {
                  "color": "#ffffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "labelMedium": {
                  "color": "#ffffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "labelSmall": {
                  "color": "#ffffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "titleLarge": {
                  "color": "#ffffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "titleMedium": {
                  "color": "#ffffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                },
                "titleSmall": {
                  "color": "#ffffffff",
                  "decoration": "none",
                  "fontFamily": "Roboto",
                  "fontFamilyFallback": [
                    "Ubuntu",
                    "Cantarell",
                    "DejaVu Sans",
                    "Liberation Sans",
                    "Arial"
                  ],
                  "inherit": true
                }
              }
            },
            "unselectedWidgetColor": "#8a000000",
            "useMaterial3": false,
            "visualDensity": "compact"
          }
      ) ,
      home: const HomePage(),
    );
  }
}
