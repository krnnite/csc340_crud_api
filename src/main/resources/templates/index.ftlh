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
    <!--FIXME: Play around with card spacing -->
    <div class="mx-2">
        <h3>Character Cards</h3>
        <h5>Browse our current selection of character cards. We feature fictional characters that you may or may not know!</h5>
    </div>
    <div class="row row-cols-3 mt-3">
        <div class="col mb-3">
            <div class="card">
                <img src="img/huntress.jpg" class="card-img-top" alt="Huntress">
                <div class="card-body">
                    <h5 class="card-title">Huntress</h5>
                    <p class="card-text">Anna or "The Huntress" is one of 41 Killers currently featured in Dead by Daylight. </p>
                </div>
            </div>
        </div>
        <div class="col mb-3">
            <div class="card">
                <img src="img/starbutterfly.jpg" class="card-img-top" alt="Star Butterfly">
                <div class="card-body">
                    <h5 class="card-title">Star Butterfly</h5>
                    <p class="card-text">Star Butterfly, also known as Star the Underestimated, is the main and titular protagonist of Star vs. the Forces of Evil. She is a teenage princess of the Kingdom of Mewni sent to Earth by her parents in order to learn how to use the royal magic wand, with supervision from Glossaryck.</p>
                </div>
            </div>
        </div>
        <div class="col mb-3">
            <div class="card">
                <img src="img/prue.jpg" class="card-img-top" alt="Prue Halliwell">
                <div class="card-body">
                    <h5 class="card-title">Prue Halliwell</h5>
                    <p class="card-text">Prudence "Prue" Halliwell was the oldest Charmed One, and had always been regarded as the most powerful of the four sisters, to the extent that she was granted the nicknames "Super Witch" and "Wicca Wonder". She was the older sister to Piper and Phoebe Halliwell and the older maternal half-sister to Paige Matthews.</p>
                </div>
            </div>
        </div>
        <div class="col mb-3">
            <div class="card">
                <img src="img/piper.jpg" class="card-img-top" alt="Piper Halliwell">
                <div class="card-body">
                    <h5 class="card-title">Piper Halliwell</h5>
                    <p class="card-text">Piper Halliwell is the second oldest Charmed One, younger sister of Prue Halliwell, older sister of Phoebe Halliwell and older maternal half-sister of Paige Matthews. Piper is the second-born of Patty's four children and the middle daughter of Patty Halliwell and Victor Bennett. Now married to Leo Wyatt, Piper is the mother of Wyatt, Chris and Melinda Halliwell.</p>
                </div>
            </div>
        </div>
        <div class="col mb-3">
            <div class="card">
                <img src="img/phoebe.jpg" class="card-img-top" alt="Phoebe Halliwell">
                <div class="card-body">
                    <h5 class="card-title">Phoebe Halliwell</h5>
                    <p class="card-text">Phoebe Halliwell is the third Charmed One, the younger sister of Prue and Piper Halliwell, and the older maternal half-sister of Paige Matthews. Phoebe is the third-born of Patty's four children and the youngest daughter of Patty Halliwell and Victor Bennett. Now married to Coop Halliwell[3], Phoebe is the mother of P.J., Parker, and Peyton Halliwell.</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>