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
        showSongList();
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
      showSongList();
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
      showSongList();
    });
 }
}

function drawTable(data) {
    for (var i = 0; i < data.length; i++) {
        drawRow(data[i]);
    }
}

function drawRow(rowData) {
    var row = $("<tr />")
    $("#songList").append(row);
    row.append($("<td>" + rowData.song_title + "</td>"));
    row.append($("<td>" + rowData.duration + "</td>"));
}

function listSongs(artistId){
  $("#songList").empty();
  $.get('/api/artists/' + artistId + '/songs', function(data) {
    drawTable(data.songs);
  });
}

function showSongList(){
    $("#addSongForm").hide();
    $("#songList").show();
    var artistId = $("#songList").data("artistid")
    listSongs(artistId);
}

function showAddSongForm(){
    $("#songList").hide();
    $("#addSongForm").show();
}

//Show-Hide Song List / Add Song Form
$(document).ready(function(){
  $("#addSongButton").click(function(){
    showAddSongForm();
  });

  $("#cancelAddSongButton").click(function(){
    showSongList();
  });

  showSongList();

});
