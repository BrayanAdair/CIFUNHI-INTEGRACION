const audio1 = document.getElementById("audio1");
const audio2 = document.getElementById("audio2");
const audio3 = document.getElementById("audio3");
const audio4 = document.getElementById("audio4");
const audio5 = document.getElementById("audio5");

audio1.addEventListener("play", function() {
  audio2.pause();
  audio3.pause();
  audio4.pause();
  audio5.pause();
});

audio2.addEventListener("play", function() {
  audio1.pause();
  audio3.pause();
  audio4.pause();
  audio5.pause();
});

audio3.addEventListener("play", function() {
  audio1.pause();
  audio2.pause();
  audio4.pause();
  audio5.pause();
});

audio4.addEventListener("play", function() {
    audio1.pause();
    audio2.pause();
    audio3.pause();
    audio5.pause();
  });

audio5.addEventListener("play", function() {
  audio1.pause();
  audio2.pause();
  audio3.pause();
  audio4.pause();
});
