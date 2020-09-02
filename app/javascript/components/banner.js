import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Like this effect? ^1000   I thought you might"],
    typeSpeed: 60,
    loop: true
  });
}

// more effects for this javascript toy can be found here; https://www.npmjs.com/package/typed.js

export { loadDynamicBannerText };
