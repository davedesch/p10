$(document).ready(function() {
    console.log('working');

  $('#gitname').submit(function(event){
    // alert("dave is great");
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
      var repo_url = response[0].owner.html_url;
      var git_username = response[0].owner.login;
      $('.gitresults').html("<h3>This is " + git_username + "!</h3><img class='gitpicture' src='" + avi_url + "'><br><a href='" + repo_url + "'>Go to the Git!</a>");

        // <a href='" + repo_url + "'><br><img class='gitpicture' src='" + avi_url + "'>Go To The Git</a>");

      // $('.gitresults').html("< a href='")
      console.log("success");
      console.log(response[0].owner.login);
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
