function handleSelect() {
    if (this.value == '01') {
        document.getElementById('checked').disabled = true;
    } else {
        document.getElementById('checked').disabled = false;
    }
}