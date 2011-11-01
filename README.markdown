TiKeyboardEvents Module for Titanium
=====================================

This module exposes some useful keyboard events available in iOS, used to notify the application when the keyboard is shown and hidden.

The module catches the UIKit keyboard notifications `UIKeyboardWillShowNotification` and `UIKeyboardWillHideNotification`, and fires the as the Titanium events `keyboardWillShow` and `keyboardWillHide`. For the `keyboardWillShow` event, the height of the keyboard is passed along, to allow apps to adjust the view to account for the keyboard.

More information about the iOS keyboard notifications can be found in [Apple's UIKit documentation][appledocs].

General information about developing and using Titanium modules is found in the [Titanium docs][timoduledocs].

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
KeyboardEvents.addEventListener("keyboardWillShow", function(e) {
    alert("Keyboard will show, with height=" + e.keyboardHeight);
});

KeyboardEvents.addEventListener("keyboardWillHide", function() {
    alert("Keyboard will hide");
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
