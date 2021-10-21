function getFileParam() {
    try {
        var file = document.getElementById('uploaded-file').files[0];
        if (file) {
            document.getElementById('file-name').innerHTML = 'Название: ' + file.name;
        }
    }catch(e) {
        var file = document.getElementById('uploaded-file').value;
        file = file.replace(/\\/g, "/").split('/').pop();
        document.getElementById('file-name').innerHTML = 'Имя: ' + file;
    }
}