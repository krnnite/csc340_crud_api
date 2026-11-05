<#import "layout.ftlh" as l>
<@l.page title=formTitle active=(character.id??)?then('', 'new')>
    <h1>${formTitle}</h1>
    <form method="post" action="${formAction}" enctype="multipart/form-data" class="form">

        <label for="name">Name</label>
        <input id="name" name="name" type="text" value="${(character.name)!''}" required>

        <label for="universe">Universe</label>
        <input id="universe" name="universe" type="text" value="${(character.universe)!''}" required>

        <label for="debutDate">Debut Date</label>
        <input id="debutDate" name="debutDate" type="date" value="${(character.debutDate)!''}">

        <label for="description">Description</label>
        <input id="description" name="description" type="text" value="${(character.description)!''}" required>

        <label for="imageFile">Picture (JPEG, PNG, or WebP, up to 1 MB)</label>
        <#if character.id??>
            <img class="thumb" src="/characters/${character.id?c}/image" alt="Current picture">
        </#if>
        <input id="imageFile" name="imageFile" type="file" accept="image/jpeg,image/png,image/webp">

        <div class="actions">
            <button type="submit">Save</button>
            <#if character.id??>
                <a href="/characters/${character.id?c}">Cancel</a>
            <#else>
                <a href="/">Cancel</a>
            </#if>
        </div>
    </form>
</@l.page>