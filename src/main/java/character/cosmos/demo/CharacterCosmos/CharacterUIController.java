package character.cosmos.demo.CharacterCosmos;

import java.time.LocalDate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import jakarta.validation.Valid;


@Controller 
public class CharacterUIController {
    private final CharacterService service;

    CharacterUIController(CharacterService service) {
        this.service = service;
    }

    @GetMapping({"/", "/characters"})
    public String gallery(@RequestParam(required = false) String name, Model model) {
        model.addAttribute("characters", service.search(name));
        model.addAttribute("name", name == null ? "" : name);
        return "index";
    }

    @GetMapping("/characters/{id}")
    public String details(@PathVariable Long id, Model model) {    
        FictionCharacter character = service.findById(id);
        if (character == null) {
            model.addAttribute("errorMessage", "Character not found for ID: " + id);
            return "error";
        }
        model.addAttribute("character", character);
        return "details";
    }

    @GetMapping("/character/new")
    public String newForm(Model model) {
        FictionCharacter character = new FictionCharacter();
        character.setDebutDate(LocalDate.now());
        model.addAttribute("character", character);
        model.addAttribute("formTitle", "Add a new Character");
        model.addAttribute("formAction", "/characters");
        return "new-character-form";
    }

    @PostMapping("/characters")
    public String createCharacter(@Valid @ModelAttribute FictionCharacter character, MultipartFile imageFile) {
    FictionCharacter newCharacter = service.create(character);
    if (imageFile != null && !imageFile.isEmpty()) {
        service.saveThumbnail(newCharacter, imageFile);
    }
    return "redirect:/characters/" + newCharacter.getId();
    }

    @GetMapping("/characters/{id}/edit")
    public String editForm(@PathVariable Long id, Model model) {
    FictionCharacter character = service.findById(id);
    model.addAttribute("character", character);
    model.addAttribute("formTitle", "Edit Character");
    model.addAttribute("formAction", "/characters/" + id);
    return "new-character-form";
    }

    @PostMapping("/characters/{id}")
    public String updateCharacter(@PathVariable Long id, @Valid @ModelAttribute FictionCharacter character, MultipartFile imageFile) {
    FictionCharacter updatedCharacter = service.update(id, character);
    if (imageFile != null && !imageFile.isEmpty()) {
        service.saveThumbnail(updatedCharacter, imageFile);
    }
    return "redirect:/characters/" + updatedCharacter.getId();
    }

    @PostMapping("/characters/{id}/delete")
    public String deleteCharacter(@PathVariable Long id) {
    service.delete(id);
    return "redirect:/";
    }

    @GetMapping("/about")
    public String about() {
    return "about";
    }


}
