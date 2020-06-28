document.addEventListener('DOMContentLoaded', () => {
  const text     = Array.prototype.slice.call(document.querySelectorAll("[id^=text]"));
  const speakBtn = Array.prototype.slice.call(document.querySelectorAll("[id^=speak-btn]"));

  speakBtn.forEach(btn => {
    btn.addEventListener('click', function() {
      // 発言を作成
      let id = speakBtn.indexOf(this)
      const uttr = new SpeechSynthesisUtterance(text[id].innerText)
      // 発言を再生 (発言キューに発言を追加)
      speechSynthesis.speak(uttr)
    });
  });
});