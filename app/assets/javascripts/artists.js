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
