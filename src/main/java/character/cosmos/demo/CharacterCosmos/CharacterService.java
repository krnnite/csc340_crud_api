package character.cosmos.demo.CharacterCosmos;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CharacterService {

    private final CharacterRepository repository;

    public CharacterService(CharacterRepository repository) {
        this.repository = repository;
    }

    public List<FictionCharacter> findAll() {
        return repository.findAll();
    }

    public List<FictionCharacter> findByUniverse(String universe) {
        return repository.findByUniverse(universe);
    }

    // Combines optional filters. Either argument may be null.
    public List<FictionCharacter> search(String name, String universe) {
        boolean hasName = name != null && !name.isBlank();

        if (hasName && universe != null) {
            return repository.findByNameContainingIgnoreCaseAndUniverse(name.trim(), universe);
        }
        if (hasName) {
            return repository.findByNameContainingIgnoreCase(name.trim());
        }
        if (universe != null) {
            return repository.findByUniverse(universe);
        }
        return repository.findAll();
    }

    public FictionCharacter findById(Long characterId) {
        return repository.findById(characterId).orElseThrow(() -> new FictionCharacterNotFoundException(characterId));
    }

    public FictionCharacter create(FictionCharacter fictionCharacter) {
        return repository.save(fictionCharacter);
    }

    public FictionCharacter update(Long characterId, FictionCharacter updated) {
        FictionCharacter existing = findById(characterId);
        existing.setName(updated.getName());
        existing.setUniverse(updated.getUniverse());
        existing.setDescription(updated.getDescription());
        existing.setDebutDate(updated.getDebutDate());
        return repository.save(existing);
    }

    public void delete(Long characterId) {
        findById(characterId); // throws 404 if missing
        repository.deleteById(characterId);
    }
}