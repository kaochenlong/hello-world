// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import $ from "jquery"
require('bootstrap-datepicker')
Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "bootstrap-datepicker"


document.addEventListener('turbolinks:load', ()=>{
    $('.datepicker').datepicker({
      multidate: true,
      format: 'dd-mm-yyyy'
    });
})