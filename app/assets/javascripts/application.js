// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function openNav() {
  document.getElementById('mySidebar').style.width = "250px";
  document.getElementById('main').style.marginLeft = "250px";
  document.getElementById('main_content').style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById('mySidebar').style.width = "0";
  document.getElementById('main').style.marginLeft = "0";
  document.getElementById('main_content').style.marginLeft = "0";
}

function ToggleText(elem) {
  $('#'+elem.id+"p").toggle();
}

function SetFontSize(val) {
  $("*").each(function(i,e){
    e.style.fontSize = val;
  });
}

function SetPageStyle(val) {
  if (val === 'Dark') {
    $("*").each(function(i,e){e.style.background = "black"});
    $("*").each(function(i,e){e.style.color = "white"});
  }
  else {
    $("*").each(function(i,e){e.style.background = "white"});
    $("*").each(function(i,e){e.style.color = "black"});
  }
}

function ValidateProductForm() {
  $('#ProductForm').validate({
    rules: {
      'product[name]': {required: true},
      'product[description]': {required: true},
      'product[price]': {required: true, digits: true, range: [0, Infinity]},
      'product[image_url]': {required: true}
    },
    message: {
      'product[name]': {required: "must enter product's name"},
      'product[description]': {required: "must enter a product description"},
      'product[price]': {required: "must have a product price"},
      'product[image_url]': {required: "must have a image url"}
    }
  });
}

$(document).ready(function() {

  if(document.getElementById('welcome')) {
    $('#welcomep').hide();
  }

  if (document.getElementById('ProductForm')) {
    ValidateProductForm()
  }

});
