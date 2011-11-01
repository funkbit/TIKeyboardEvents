TiKeyboardEvents Module for Titanium
=====================================

This module exposes some useful keyboard events available in iOS, used to notify the application when the keyboard is shown and hidden.

Information about the keyboard notifications can be found in the [Apple UIKit documentation][appledocs].

Currently, the two supported keyboard events are keyboardWillShow and keyboardWillHide, typically used to adjust the size of the current view
depending on keyboard visibility.

General information about Titanium modules can be found in the [Titanium docs][timoduledocs].

Usage
-----

Copy the module to the Titanium directory (e.g. /Library/Application Support/Titanium).

Add the module to your projects `tiapp.xml`:

```xml
<modules>
    <module version="0.1">no.funkbit.keyboardevents</module>
</modules>
```

Load the module in your application's app.js:

```js
KeyboardEvents = require("no.funkbit.keyboardevents");
```

Bind to the events you are interested in:

```js
KeyboardEvents.addEventListener("keyboardWillShow", function() {
    alert("Keyboard will show!");
});

KeyboardEvents.addEventListener("keyboardWillShow", function() {
    alert("Keyboard will show!");
});
```

Building
--------

1. Open the Xcode project, make changes and build as normal.
2. Execute `./build.py` to package the module as an archive.
3. Copy the archive to the Titanium directory to make it available:

```sh
cp no.funkbit.keyboardevents-iphone-0.1.zip /Library/Application\ Support/Titanium/
```

[appledocs]: http://developer.apple.com/library/ios/#documentation/uikit/reference/UIWindow_Class/UIWindowClassReference/UIWindowClassReference.html
[timoduledocs]: http://wiki.appcelerator.org/display/guides/iOS+Module+Development+Guide
