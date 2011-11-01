KeyboardEvents Module for Appcelerator Titanium
===============================================

Copyright 2011 Funkbit AS (http://funkbit.no).

The module exposes some useful keyboard events available in iOS, to notify the application
when the keyboard is about to be shown and hidden.

Information about the notifications can be found in the Apple iOS docs:
http://developer.apple.com/library/ios/#documentation/uikit/reference/UIWindow_Class/UIWindowClassReference/UIWindowClassReference.html

Currently, the two supported keyboard events are keyboardWillShow and keyboardWillHide, typically used to adjust the size of the current view
depending on keyboard visibility.

General information about Titanium modules can be found here:
http://wiki.appcelerator.org/display/guides/iOS+Module+Development+Guide

Usage
-----

1. Copy the module to the Titanium directory (e.g. /Library/Application Support/Titanium).
2. Add the module to your projects `tiapp.xml`:

    <modules>
        <module version="0.1">no.funkbit.keyboardevents</module>
    </modules>

3. Load the module in your application's app.js:

    KeyboardEvents = require("no.funkbit.keyboardevents");

4. Bind to the events you are interested in:
    
    KeyboardEvents.addEventListener("keyboardWillShow", function() {
        alert("Keyboard will show!");
    });
    
    KeyboardEvents.addEventListener("keyboardWillShow", function() {
        alert("Keyboard will show!");
    });

Building
--------

1. Open the Xcode project and build it as normal.
2. Execute `build.py` to package the module.
3. Copy the archive to the Titanium directory to make it available:

    cp no.funkbit.keyboardevents-iphone-0.1.zip /Library/Application\ Support/Titanium/
