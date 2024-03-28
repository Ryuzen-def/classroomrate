<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Calendar</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <h2>Calendar</h2>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="monthSelect">Select Month:</label>
            <select id="monthSelect" class="form-control">
                <option value="0">January</option>
                <option value="1">February</option>
                <option value="2">March</option>
                <option value="3">April</option>
                <option value="4">May</option>
                <option value="5">June</option>
                <option value="6">July</option>
                <option value="7">August</option>
                <option value="8">September</option>
                <option value="9">October</option>
                <option value="10">November</option>
                <option value="11">December</option>
            </select>
        </div>
        <div class="form-group col-md-6">
            <label for="yearSelect">Select Year:</label>
            <select id="yearSelect" class="form-control"></select>
        </div>
    </div>
    <div id="calendar"></div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script>
$(document).ready(function(){
    // Mengisi opsi tahun
    var currentYear = moment().year();
    for (var i = currentYear - 10; i <= currentYear + 10; i++) {
        $('#yearSelect').append($('<option>', {
            value: i,
            text: i
        }));
    }

    // Mengisi opsi bulan
    var currentMonth = moment().month();
    $('#monthSelect').val(currentMonth);

    // Menginisialisasi kalender dengan bulan dan tahun saat ini
    renderCalendar(currentYear, currentMonth);
    
    // Event listener untuk perubahan bulan dan tahun
    $('#monthSelect, #yearSelect').change(function() {
        var selectedMonth = $('#monthSelect').val();
        var selectedYear = $('#yearSelect').val();
        renderCalendar(selectedYear, selectedMonth);
    });
});

function renderCalendar(year, month) {
    var firstDay = moment([year, month, 1]);
    var lastDay = moment([year, month]).endOf('month');
    var daysInMonth = lastDay.date();
    var firstDayOfWeek = firstDay.day();

    var calendarHTML = '<table class="table table-bordered">';
    calendarHTML += '<thead><tr><th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th></tr></thead>';
    calendarHTML += '<tbody>';

    var dayCounter = 1;

    for (var i = 0; i < 6; i++) {
        calendarHTML += '<tr>';
        for (var j = 0; j < 7; j++) {
            if ((i === 0 && j < firstDayOfWeek) || dayCounter > daysInMonth) {
                calendarHTML += '<td></td>';
            } else {
                calendarHTML += '<td>' + dayCounter + '</td>';
                dayCounter++;
            }
        }
        calendarHTML += '</tr>';
        if (dayCounter > daysInMonth) {
            break;
        }
    }

    calendarHTML += '</tbody></table>';

    $('#calendar').html(calendarHTML);
}
</script>

</body>
</html>
