import { v4 } from 'uuid';

/**
 * --------------------------------------------------------------------------
 * Bootstrap Italia (https://italia.github.io/bootstrap-italia/)
 * Authors: https://github.com/italia/bootstrap-italia/blob/main/AUTHORS
 * Licensed under BSD-3-Clause license (https://github.com/italia/bootstrap-italia/blob/main/LICENSE)
 * --------------------------------------------------------------------------
 */


let ticking = false;
let callbacks = [];

class ScrollCallback {
  constructor(id, callback) {
    this.id = id;
    this._callback = callback;
  }

  //Public
  dispose() {
    removeCallBack(this.id);
  }

  //Private
  _execute(data) {
    this._callback(data);
  }
}

const removeCallBack = (id) => {
  callbacks = callbacks.filter((cb) => cb.id !== id);
};

const onDocumentScroll = (callback) => {
  if (typeof document === 'undefined') {
    return
  }
  if (!callbacks.length) {
    if (typeof window !== 'undefined' && typeof document !== 'undefined') {
      document.addEventListener('scroll', (evt) => {
        if (!ticking) {
          window.requestAnimationFrame(() => {
            callbacks.forEach((cbObj) => cbObj.cb._execute(evt));
            ticking = false;
          });
          ticking = true;
        }
      });
    }
  }

  if (typeof callback === 'function') {
    const newCb = new ScrollCallback(v4(), callback);
    callbacks.push({
      id: newCb.id,
      cb: newCb,
    });
    return newCb
  }

  console.error('[onDocumentScroll] the provided data has to be of type function');
  return null
};

export { onDocumentScroll as default };
//# sourceMappingURL=on-document-scroll.js.map
