$.ajaxPrefilter(function(options, originalOptions, xhr) {
  var token = $('meta[name="csrf-token"]').attr('content');
  xhr.setRequestHeader('X-CSRF-Token', token);
});
