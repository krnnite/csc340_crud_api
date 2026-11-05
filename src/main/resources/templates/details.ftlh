<#import "layout.ftlh" as l>
  <@l.page title="Plant Details" active="home">
    <p><a href="/">Back to Characters</a></p>

    <div class="details">
      <img class="hero" src="/thumbnails/${(character.thumbnailUrl)!'character-placeholder.svg'}" alt="${character.name}" width="400" height="400">
      <div>
        <h1>${character.name}</h1>
        <dl>
          <dt>Universe</dt>
          <dd>${character.universe?lower_case?cap_first}</dd>
          <dt>Debut Date</dt>
          <dd>${character.debutDate}</dd>
          <dt>Description</dt>
          <dd>${character.description}</dd>
        </dl>
        <div class="actions">
          <a class="button" href="/characters/${character.id?c}/edit">Edit</a>
            <form method="post" action="/characters/${character.id?c}/delete" onsubmit="return confirm('Remove this Character?');">
              <button type="submit" class="danger">Delete</button>
            </form>
        </div>
      </div>
    </div>

  </@l.page>