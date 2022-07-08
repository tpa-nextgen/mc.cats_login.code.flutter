# Login page

Try to reproduce followed page:

<img src="https://i.imgur.com/ZtfaapT.png" height="600"/>


#### #1: Look carefully, as you can see each button has additional subtle aspects, such as:
  * slight rounding of the corners
  * a slight "drop shadow". 

Use Material widget called [Card](https://api.flutter.dev/flutter/material/Card-class.html) to for this effect. As you can find in the official documentation of the `Card` widget, there is another widget which really likes to be Card's child widget: [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html).

`ListTile` gives us the `leading` and `title` properties for pretty rendering.

#### #2: All images you can find in `images` directory.

Remember to load them.

#### #3: You can use hexadecimal colors in Flutter.

To do so, use the syntax `Color(0x...)` where '...' is colors in HEX. Here are the colors necessary to do this exercise:
  - background - `Color(0xff120128)`
  - facebook - `Color(0xff0035A5)`
  - google - `Color(0xff2084FA)`

#### #4: Use valid margins

Margins: 
* Horizontal - 40px
* Bottom - 46px