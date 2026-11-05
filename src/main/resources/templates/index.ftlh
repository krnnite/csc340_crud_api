<#import "layout.ftlh" as l>
    <@l.page title="My Characters" active="home">
        <form method="get" action="/characters" class="search">
            <input type="text" name="name" value="${name!''}" placeholder="Search by name">
            <button type="submit">Search</button>
            <#if name?has_content>
                <a href="/characters" class="clear">Clear</a>
            </#if>
        </form>

        <p class="count">${characters?size} characters(s)</p>
        <div class="grid">
            <#list characters as character>
                <article class="card">
                    <a href="/characters/${character.id?c}">
                        <img src="/thumbnails/${(character.thumbnailUrl)!'character-placeholder.svg'}" alt="${character.name}" height="400" width="400">
                    </a>
                    <div class="card-body">
                        <h3><a href="/characters/${character.id?c}">${character.name}</a></h3>
                        <p class="meta">Universe: ${character.universe?lower_case?cap_first}</p>
                        <p class="meta">Debut Date: ${character.debutDate}</p>
                    </div>
                </article>
                <#else>
                    <p class="empty">No Characters found.</p>
            </#list>
        </div>
    </@l.page>