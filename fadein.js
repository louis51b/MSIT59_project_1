function fadeIn(elementId, delay) {
      setTimeout(function() {
        document.getElementById(elementId).classList.add('show');
      }, delay);
    }
    fadeIn('object1', 500); // 延遲 500 毫秒後 object1 出現
    fadeIn('object2', 1500); // 延遲 1500 毫秒後 object2 出現
    fadeIn('object3', 2500); // 延遲 2500 毫秒後 object3 出現
    fadeIn('object4', 3500);