$(document).ready(function(){
  listSongs(1);
});

function listSongs(artistId){
  
}

function deleteSong(artistId, songId) {
  $.ajax({
    type: "DELETE",
    url: "api/artists/" + artistId + "/songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {

  });
}
