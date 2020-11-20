// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import "../plugins/flatpickr";
import { initSwal } from "../plugins/sweetalert";

// Internal imports, e.g:
import {smoothScroll} from '../components/banner'
import {navChange} from '../components/banner'
import {initFlatpicker} from "../plugins/flatpickr"

// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  smoothScroll();
  navChange();
  initFlatpicker();
  initSwal();
});

const checkboxes = document.querySelectorAll("input[type='checkbox']");

checkboxes.forEach((box) => {
  box.addEventListener('click', () => {
    let onBoxes = [];
    let keyValues = [];
    // gather all "on" checkboxes
    checkboxes.forEach((box) => {
      if (box.checked) {
        onBoxes.push(box);
      };
    });

    // for each "on" box, put its "name" and "value" attributes into KeyValues array.
    onBoxes.forEach((box) => {
      if (keyValues[box.name]) {
        keyValues[box.name].push(box.value);
      } else {
        keyValues[box.name] = [];
        keyValues[box.name].push(box.value);
      }
    });
    console.log(keyValues);
    // We now want each card.
    const cards = document.querySelectorAll(".card-category.item-card");

    cards.forEach((card) => {
      card.parentElement.style.display = "block";
      if (onBoxes.length > 0) {
        Object.keys(keyValues).forEach((key) => {
          if (!keyValues[key].includes(card.dataset[key])) {
            card.parentElement.style.display = "none";
          };
        });
      };
    });
  });
});
