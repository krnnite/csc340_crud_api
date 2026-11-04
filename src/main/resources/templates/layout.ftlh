<#macro page title active="">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>CharacterCosmos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <link href="css/stylesheet.css" rel="stylesheet">
    </head>
    <body>
        <!--FIXME: Nav Bar, add href from 'CharacterCosmos' label, config menu to move to far right if collapse-->
        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="img/flavicons/charactercosmos.png" alt="logo">
                        CharacterCosmos</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                            <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                            <a class="nav-link" href="details.html">Details</a>
                            <a class="nav-link" href="about.html">About</a>
                            <a class="nav-link" href="new-character-form.html">Add a Character</a>
                        </div>
                    </div>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </nav>
        </header>
        <main class="container">
            <#if message??>
                <p class="alert">${message}</p>
            </#if>
            <#nested>
      </main>
    </body>
    </html>
</#macro>