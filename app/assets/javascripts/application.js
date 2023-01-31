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
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= stub jsonmarkers
//= require chartkick
//= require Chart.bundle
//= require_tree .

/* Set the width of the sidebar to 250px and the left margin of the page content to 250px */
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.getElementById("slideStats").style.marginLeft = "250px";
  document.getElementById("slideNews").style.marginLeft = "250px";
}

/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
  document.getElementById("slideStats").style.marginLeft = "0";
  document.getElementById("slideNews").style.marginLeft = "0";
}

function openStats() {
  document.getElementById("slideStats").style.width = "500px";
}

function closeStats() {
  document.getElementById("slideStats").style.width = "0";
}

function openNews() {
  document.getElementById("slideNews").style.width = "500px";
}

function closeNews() {
  document.getElementById("slideNews").style.width = "0";
}
