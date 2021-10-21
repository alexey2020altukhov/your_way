function clearError(name) {
    document.getElementById(name).innerHTML = "";
}

function clearField(name) {
    name.value = "";
}

function removeFocus(element) {
    element.blur();
}