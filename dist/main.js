/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./src/scss/style.scss":
/*!*****************************!*\
  !*** ./src/scss/style.scss ***!
  \*****************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be isolated against other modules in the chunk.
(() => {
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _scss_style_scss__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./scss/style.scss */ "./src/scss/style.scss");


const weatherForm = document.getElementById('weather-form');
const apiKey = 'c20d664fe15511ff6b176f9e20df512f';

weatherForm.addEventListener('submit', async (event) => {
  event.preventDefault();

  const formData = new FormData(weatherForm);
  const location = formData.get('location');
  const unit = formData.get('unit');
  const endpoint = `http://api.openweathermap.org/data/2.5/weather?q=${location}&APPID=${apiKey}&units=${unit}`;

  try {
    await fetch(endpoint)
    .then((response) => response.json())
    .then((data) => {
      const { name } = data;
      const { description } = data.weather[0];
      const { temp, humidity } = data.main;
      const { speed } = data.wind;
      const unitSymbol = unit === 'metric' ? '°C' : '°F';
      const windSpeed = unit === 'metric' ? 'km/h' : 'm/s';

      document.querySelector('.city').innerText = `Weather in ${name}`;
      document.querySelector(
        '.description',
      ).innerText = `Cloudy: ${description}`;
      document.querySelector('.temp').innerText = temp + unitSymbol;
      document.querySelector(
        '.humidity',
      ).innerText = `Humidity: ${humidity}%  `;
      document.querySelector(
        '.wind',
      ).innerText = `Wind speed ${speed}${windSpeed}`;
      document.querySelector('.weather').classList.remove('Loading');
      document.body.style.backgroundImage = `url('http://source.unsplash.com/1600x900/?${name} ')`;
    });
    } catch(e) {
      console.log(e )
    }
  // await fetch(endpoint)
  //   .then((response) => response.json())
  //   .then((data) => {
  //     const { name } = data;
  //     const { description } = data.weather[0];
  //     const { temp, humidity } = data.main;
  //     const { speed } = data.wind;
  //     const unitSymbol = unit === 'metric' ? '°C' : '°F';
  //     const windSpeed = unit === 'metric' ? 'km/h' : 'm/s';

    //   document.querySelector('.city').innerText = `Weather in ${name}`;
    //   document.querySelector(
    //     '.description',
    //   ).innerText = `Cloudy: ${description}`;
    //   document.querySelector('.temp').innerText = temp + unitSymbol;
    //   document.querySelector(
    //     '.humidity',
    //   ).innerText = `Humidity: ${humidity}%  `;
    //   document.querySelector(
    //     '.wind',
    //   ).innerText = `Wind speed ${speed}${windSpeed}`;
    //   document.querySelector('.weather').classList.remove('Loading');
    //   document.body.style.backgroundImage = `url('http://source.unsplash.com/1600x900/?${name} ')`;
    // });
});

})();

/******/ })()
;
//# sourceMappingURL=main.js.map