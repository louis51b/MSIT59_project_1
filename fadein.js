function fadeIn(elementId, delay) {
      setTimeout(function() {
        document.getElementById(elementId).classList.add('show');
      }, delay);
    }
    fadeIn('object1', 500); // 延遲 500 毫秒後 object1 出現
    fadeIn('object2', 750); // 延遲 1500 毫秒後 object2 出現
    fadeIn('object3', 1000); // 延遲 2500 毫秒後 object3 出現
    fadeIn('object4', 1250);
    fadeIn('bg-img-1', 500);
    fadeIn('bg-img-2', 500);
    fadeIn('bg-img-3', 500);
    fadeIn('bg-img-4', 500);
    