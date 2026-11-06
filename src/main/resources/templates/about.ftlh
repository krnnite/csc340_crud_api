<#import "layout.ftlh" as l>
<@l.page title="About" active="about">
    <h1>About CharacterCosmos</h1>

    <div class="mx-2">
        <div class="mt-4">
            <h5><strong>What is CharacterCosmos?</strong></h5>
            <h6>CharacterCosmos is an online ficitonal character gallary creeated by Kieren Nite. Kieren is an inspiration to the next generation 
                of software developers, constantly raising the bar for us all.
            </h6>
        </div>
        <div class="mt-4">
            <h5><strong>How were the characters chosen?</strong></h5>
            <h6>Kieren, the author of the website, chose the characters that came to mind from favored pieces of media.
                Most recently he has found inspiration from a show called 'Charmed' about three sister witches who use 
                their powers for good against the forces of evil
            </h6>
        </div>
        <div class="mt-4">
            <h5><strong>What does the website author look like?</strong></h5>
            <img src="/img/author.jpg">
        </div>  
        <div class="mt-4">
            <h5><strong>How does CharacterCosmos work?</strong></h5>
            <h6>
                The application is built using a MVC architecture, where Spring Boot manages the backend business logic and .ftlh templates handle 
                server-side view. The front end captures user actions and sends standard HTTP requests to the server. The backend Controller then 
                processes these requests through the service layer, executes the appropriate database operations, and 
                redirects the client back to the updated view.
            </h6>
        </div> 
    </div>
</@l.page>