keyboardEvents = require('no.funkbit.keyboardevents');

// Called when the keyboard is about to be shown.
keyboardEvents.addEventListener('keyboardWillShow', function(e) {
    alert("Keyboard is showing, height=" + e.keyboardHeight);
});

// Called when the keyboard is about to be hidden.
keyboardEvents.addEventListener('keyboardWillHide', function() {
    alert("Keyboard will be hidden.");
});

var window = Ti.UI.createWindow({
    backgroundColor: 'white'
});

var textField = Titanium.UI.createTextField({
    value: 'Focus to see keyboard',
    height: 35,
    width: 300,
    top: 10,
    borderStyle: Titanium.UI.INPUT_BORDERSTYLE_ROUNDED
});

window.add(textField);
window.open();
