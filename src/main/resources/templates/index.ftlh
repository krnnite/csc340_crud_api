<#import "layout.ftlh" as l>
    <@l.page title="My Characters" active="home">
        <form method="get" action="/characters" class="search">
            <input type="text">
        </form>
        <div class="grid">
            <#list characters as character>
                <article class="card">
                    <a href="/characters/${character.id?c}">
                        <img src>
                    </a>
                    <div class="card-body">
                        <h3><a href="/characters/${character.id?c}">${character.name}</a></h3>
                        <p class="meta">Universe: ${character.universe?lower_case?cap_first}</p>
                        <p class="meta">Debut Date: ${character.debutDate}</p>
                </article>
                <#else>
                    <p class="empty">No Character found.</p>
            </#list>
        </div>
    </@l.page>