/* global $ */
$(document).ready(function() {
  removeStep();
  $(".add_step").click(function(event){
    event.preventDefault();
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g')
    $('#post_steps').append($(this).data('fields').replace(regexp, time));
    removeStep();
  });
});

function removeStep() {
  $(".remove_step").click(function(event){
    event.preventDefault();
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('.item').hide();
  });
}
