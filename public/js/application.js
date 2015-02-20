$(document).ready(function() {
    console.log('working');

  $('#gitname').submit(function(event){
    alert("dave is great");
    event.preventDefault();
    var gitname = $('#gitname').serialize();
    console.log(gitname);
    $.ajax({
      url: '/productivity/new',
      dataType: 'json',
      data: gitname,
    })
    .done(function(response) {
      var avi_url = response[0].owner.avatar_url;
      $('.gitresults').html("<img src='" + avi_url + "'>");
      console.log("success");
      console.log(response[0].owner.avatar_url);
    })
    .fail(function() {
      console.log("error");
    })
    .always(function() {
      console.log("complete");
    });

  })
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
