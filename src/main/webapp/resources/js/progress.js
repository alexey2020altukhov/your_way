var percentages = 0;
var interval;

function progressBar() {
    percentages = 0;
    interval = setInterval(frames, 50)
    runAnimation();
}

function runAnimation() {
    document.getElementById("info-nationality-box").style.display = "none";
    document.getElementById("progress").style.display = "block";
    setTimeout(function () {
        document.getElementById("result-nationality").style.display = "block";
        document.getElementById("progress").style.display = "none";
    }, 5300);
}

function frames() {
    percentages = percentages + 1;
    if (percentages == 101) {
        clearInterval(interval);
    } else {
        var counter = document.querySelector(".counter");
        counter.textContent = percentages + "%";
    }
}


