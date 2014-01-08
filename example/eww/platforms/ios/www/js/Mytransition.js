function Mytransition() {
}
Mytransition.prototype.available = function (callback) {
  cordova.exec(function (avail) {
    callback(avail ? true : false);
  }, null, "Mytransition", "available", []);
};

Mytransition.prototype.curl = function (duration,direction, successCallback, errorCallback) {
    var options = {
        "duration": duration,
        "direction":direction
    };
    cordova.exec(successCallback, errorCallback, "Mytransition", "curl", [options]);
};
Mytransition.prototype.fade = function (duration,direction, successCallback, errorCallback) {
    var options = {
        "duration": duration,
        "direction":direction
    };
    cordova.exec(successCallback, errorCallback, "Mytransition", "fade", [options]);
};
Mytransition.prototype.flip = function (duration,direction, url, successCallback, errorCallback) {
    var options = {
        "duration": duration,
        "direction":direction
    };
 
    cordova.exec(successCallback, errorCallback, "Mytransition", "flip", [options]);
};


Mytransition.install = function () {
  if (!window.plugins) {
    window.plugins = {};
  }

  window.plugins.Mytransition = new Mytransition();
  return window.plugins.Mytransition;
};

cordova.addConstructor(Mytransition.install);