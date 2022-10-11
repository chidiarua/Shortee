
function copyToClip(str) {
    function listener(e) {
      e.clipboardData.setData("text/html", str);
      e.clipboardData.setData("text/plain", str);
      e.preventDefault();
    }
    const btn = document.getElementById('copy-btn')
    document.addEventListener("copy", listener);
    document.execCommand("copy");
    document.removeEventListener("copy", listener);
    btn.innerHTML = 'Copied';
    setTimeout(() => {
        btn.innerHTML = 'Copy'
    }, 400 );
  };
