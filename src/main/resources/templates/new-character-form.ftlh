<#import "layout.ftlh" as l>
  <@l.page title=formTitle active=(characterId??)?then('', 'new' )>
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
        <#if characterId??>
            <img class="thumb" src="/characters/${characterId?c}/image" alt="Current picture">
        </#if>
        <input id="imageFile" name="imageFile" type="file" accept="image/jpeg,image/png,image/webp">

        <div class="actions">
            <button type="submit">Save</button>
            <#if characterId??>
            <a href="/characters/${characterId?c}">Cancel</a>
            <#else>
                <a href="/">Cancel</a>
            </#if>
        </div>
    </form>
  </@l.page>
        <!--Create input field-->
        <!-- <div class="mx-2">
            <h3>Adding a new character to CharacterCosmos is as easy as 1, 2, 3!</h3>
            <h5>Update the below input fields with some information about the character you want to add. Don't be shy, give us all the details!</h1>
        </div>
        <form class="row row-cols-2 g-3 mt-3 mx-5">
            <div class="col mb-3">
                <label for="name-input" class="form-label">Name</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="name-input" placeholder="Sal Fisher">
                </div>
            </div>
            
            <div class="col mb-3">
                <label for="universe-input" class="form-label">Universe</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="universe-input" placeholder="Sally Face">
                </div>
            </div>

            <div class="col mb-3">
                <label for="role-input" class="form-label">Role</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="role-input" placeholder="Protagonist">
                </div>
            </div>
            
            <div class="col mb-3">
                <label for="role-input" class="form-label">Image URL</label>
                <div class="input-group">
                    <span class="input-group-text" id="basic-addon3">https://</span>
                    <input type="url" class="form-control" id="image-input">
                </div>
            </div>

            <div class="mb-3">
                <label for="role-input" class="form-label">Character Description</label>
                <div class="input-group">
                    <textarea class="form-control"></textarea>
                </div>
            </div>
        </form> -->
