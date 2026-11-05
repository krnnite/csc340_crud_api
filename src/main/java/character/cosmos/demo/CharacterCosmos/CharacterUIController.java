package character.cosmos.demo.CharacterCosmos;

import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;


@Controller 
public class CharacterUIController {
    private final CharacterService service;

    CharacterUIController(CharacterService service) {
        this.service = service;
    }

    @GetMapping({"/", "/characters"})
    public String gallery(@RequestParam String name, Model model) {
        model.addAttribute("characeter", service.search(name));
        return "index";
    }

    @GetMapping("/characters/{id}")
    public String details(@PathVariable Long id, Model model) {
        try {
            FictionCharacter character = service.findById(id);
            model.addAttribute("character", character);
            return "details";
        } catch (RuntimeException exception) {
            model.addAttribute("errorMessage",
            exception.getMessage() == null ? "Character not found" : exception.getMessage());
            return "error"; 
        }
    }

    @GetMapping("character/new")
    public String newForm(Model model) {
        FictionCharacter character = new FictionCharacter();
        character.setDebutDate(LocalDate.now());
        model.addAttribute("character", character);
        model.addAttribute("form title", "Add a new Character");
        model.addAttribute("form action", "/characters");
        return "character-form";
    }

    
}
