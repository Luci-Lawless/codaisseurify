//Show-Hide Song List / Add Song Form
$(document).ready(function(){
  $("#addSongForm").hide();
  $("#songList").show();


  $("#addSongButton").click(function(){
    $("#songList").hide();
    $("#addSongForm").show();
  });

  $("#cancelAddSongButton").click(function(){
    $("#songList").show();
    $("#addSongForm").hide();
  });

});

//Create Songs
function addSong(artistId) {
  var titleValue = $("#titleInput").val();
  var durationValue = $("#durationInput").val();

  $.ajax({
      type: "POST",
      url: '/api/artists/' + artistId + '/songs',
      data: JSON.stringify({
        song_title: titleValue,
        duration: durationValue
      }),
      contentType: "application/json",
      dataType: "json"})

      .done(function(data) {
        location.reload();
      });
}

// Delete Songs
function deleteSong(artistId, songId) {
  var confirmed = confirm('Are you sure?');

  if (confirmed) {
    $.ajax({
      type: "DELETE",
      url: '/api/artists/' + artistId + '/songs/' + songId,
      contentType: "application/json",
      dataType: "json"})

    .done(function(data) {
      location.reload();
    });
  }
}

function deleteAllSongs(artistId) {
  var confirmed = confirm('Are you sure?')

  if (confirmed) {
  $.ajax({
    type: "DELETE",
    url: '/api/artists/' + artistId + '/songs/destroy_all',
    contentType: "application/json",
    dataType: "json"})

  .done(function(data) {
    location.reload();
  });
 }
}
