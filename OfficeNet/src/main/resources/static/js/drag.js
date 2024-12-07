$(document).ready(function () {

  $('.box-item').draggable({
    cursor: 'move',
    helper: "clone"
  });

//   $(".drop").droppable({
//     drop: function (event, ui) {
//       $(this).text(ui.draggable.text());
//     }
//   });
  

});


$(document).ready(function () {

  $('.box-item1').draggable({
    cursor: 'move',
    helper: "clone"
  });

  $(".drop1").droppable({
    drop: function (event, ui) {
      $(this).text(ui.draggable.text());
    }
  });
  
});



