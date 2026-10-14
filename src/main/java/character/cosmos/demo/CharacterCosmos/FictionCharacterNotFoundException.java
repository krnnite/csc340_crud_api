package character.cosmos.demo.CharacterCosmos;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class FictionCharacterNotFoundException extends RuntimeException {
    public FictionCharacterNotFoundException(Long id) {
        super("Character " + id + " not found");
    }
}