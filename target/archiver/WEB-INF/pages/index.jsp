<!DOCTYPE html>
<html lang="en">
<head>
    <title>Web Archiver</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1 class="display-4">Online Archiver</h1>
    <h4><small>Select files to archive and then click submit to archive them</small></h4><br/>
</div>
<div class="container">
    <div class="row">
        <div class="col-8 ">
            <div class="jumbotron">
                <form action="/upload_files" enctype="multipart/form-data" method="POST">
                    <table id="fileInputTable">
                        <tr>
                            <td><p class="font-weight-light">Upload a file: <input type="file" name="file" class="btn btn-info"> <button onclick="addInputFunction()" type="button" class="btn btn-outline-primary">+</button></td>
                        </tr>
                    </table>
                    <input type="submit" class="btn btn-outline-primary btn-block"/>

                </form>
                <br>
            </div>
        </div>
    </div>
</div>
<script>
    function addInputFunction() {
        var table = document.getElementById("fileInputTable");
        var row = table.insertRow(-1);
        var cell = row.insertCell(0);
        cell.innerHTML = "<p class=\"font-weight-light\">Upload a file: <input type=\"file\" name=\"file\" class=\"btn btn-info\">";
    }
</script>

</body>
</html>
