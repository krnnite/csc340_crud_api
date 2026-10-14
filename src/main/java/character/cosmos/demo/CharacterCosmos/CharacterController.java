package character.cosmos.demo.CharacterCosmos;

import org.apache.catalina.connector.Response;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import jakarta.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class CharacterController {
    private final CharacterService service;

    public CharacterController(CharacterService service) {
        this.service = service;
    }

    @GetMapping
    public List<FictionCharacter> list(@RequestParam(required = false) String name,
            @RequestParam(required = false) String universe) {
        return service.search(name, universe);
    }

    @GetMapping("/{id}")
    public FictionCharacter get(@PathVariable Long id) {
        return service.findById(id);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public FictionCharacter create(@Valid @RequestBody FictionCharacter fictionCharacter) {
        return service.create(fictionCharacter);
    }

    @PutMapping("/{id}")
    public FictionCharacter update(@PathVariable Long id, @Valid @RequestBody FictionCharacter fictionCharacter) {
        return service.update(id, fictionCharacter);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Long id) {
        service.delete(id);
    }
}
