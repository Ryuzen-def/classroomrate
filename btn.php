<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.7/dist/sweetalert2.all.min.js"></script>
</head>
<body>

<button id="btn"> Button !</button>

<script>
    $(document).ready(function(){
        $('#btn').on('click', function(){
            Swal.fire({
                title: "The Internet?",
                text: "That thing is still around?",
                icon: "question"
            });
        });
    });
</script>

</body>
</html>
