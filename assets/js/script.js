import Swal from 'sweetalert2'
$(document).ready(function() {
    // Load classrooms from server
    loadClassrooms();
  
    // Create classroom
    $('#create-classroom').click(function() {
      $.ajax({
        type: 'POST',
        url: 'create-classroom.php',
        success: function(data) {
          var classroom = JSON.parse(data);
          var row = $('<tr>');
          row.append('<td>' + classroom.name + '</td>');
          row.append('<td>' + classroom.students.length + '</td>');
          row.append('<td><button class="view-classroom" data-id="' + classroom.id + '">View</button> <button class="delete-classroom" data-id="' + classroom.id + '">Delete</button></td>');
          $('#classrooms-table tbody').append(row);
        }
      });
    });
  
    // View classroom
    $(document).on('click', '.view-classroom', function() {
      var id = $(this).data('id');
      $.ajax({
        type: 'GET',
        url: 'view-classroom.php',
        data: {
          id: id
        },
        success: function(data) {
          console.log(data);
        }
      });
    });
  
    // Delete classroom
    $(document).on('click', '.delete-classroom', function() {
      var id = $(this).data('id');
      $.ajax({
        type: 'POST',
        url: 'delete-classroom.php',
        data: {
          id: id
        },
        success: function(data) {
          loadClassrooms();
        }
      });
    });
  
    // Load classrooms from server
    function loadClassrooms() {
      $.ajax({
        type: 'GET',
        url: 'load-classrooms.php',
        success: function(data) {
          $('#classrooms-table tbody').empty();
          var classrooms = JSON.parse(data);
          for (var i = 0; i < classrooms.length; i++) {
            var classroom = classrooms[i];
            var row = $('<tr>');
            row.append('<td>' + classroom.name + '</td>');
            row.append('<td>' + classroom.students.length + '</td>');
            row.append('<td><button class="view-classroom" data-id="' + classroom.id + '">View</button> <button class="delete-classroom" data-id="' + classroom.id + '">Delete</button></td>');
            $('#classrooms-table tbody').append(row);
          }
        }
      });
      function myAlert(){
        var settings = {};
        const handleClick = () => {
          Swal.fire({
            title: "The Internet?",
            text: "That thing is still around?",
            icon: "question"
          });
        }
      }
    }
  });