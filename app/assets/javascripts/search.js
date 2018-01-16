document.addEventListener("turbolinks:load", function() {
  $input = $("[data-behavior='autocomplete']")

  var options = {
  }

  $input.easyAutocomplete(options)
});