<!doctype html>

<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Create your account</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="container">
            <form class="form-signin" action="register.html" method="post">
                <input type="text"     name="username"  placeholder="Username"  required pattern="[\w\d-]+">
                <br>
                <input type="password" name="password"  placeholder="Password"  required pattern="[\w\d-]+">
                <br>
                <input type="text"     name="firstname" placeholder="Firstname" required pattern="[\w\d-]+">
                <br>
                <input type="text"     name="lastname"  placeholder="Lastname"  required pattern="[\w\d-]+">
                <br>
                <input type="email"    name="email"     placeholder="Email">
                <br>
                <button type="submit">Create your account</button>
            </form>
        </div>
    </body>

</html>