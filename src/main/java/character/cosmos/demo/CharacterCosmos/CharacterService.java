package character.cosmos.demo.CharacterCosmos;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

@Service
public class CharacterService {

    private final CharacterRepository repository;

    private static final String UPLOAD_DIR = "src/main/resources/static/thumbnails/";

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

    public List<FictionCharacter> search(String name) {
        boolean hasName = name != null && !name.isBlank();
        if (hasName) {
            return repository.findByNameContainingIgnoreCase(name.trim());
        }
        return repository.findAll();
    }

    public FictionCharacter findById(Long id) {
        return repository.findById(id).orElseThrow(() -> new FictionCharacterNotFoundException(id));
    }

    public FictionCharacter create(FictionCharacter fictionCharacter) {
        return repository.save(fictionCharacter);
    }

    public FictionCharacter update(Long id, FictionCharacter updated) {
        FictionCharacter existing = findById(id);
        existing.setName(updated.getName());
        existing.setUniverse(updated.getUniverse());
        existing.setDescription(updated.getDescription());
        existing.setDebutDate(updated.getDebutDate());
        return repository.save(existing);
    }

    public void delete(Long id) {
        findById(id); // throws 404 if missing
        repository.deleteById(id);
    }

    public void saveThumbnail(FictionCharacter character, MultipartFile file) {
        String originalFileName = file.getOriginalFilename();
        try {
            String fileExtension = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
            String newFileName = "character_" + character.getId() + "." + fileExtension;
            Path path = Paths.get(UPLOAD_DIR + newFileName);
            InputStream inputStream = file.getInputStream();
            Files.createDirectories(Paths.get(UPLOAD_DIR)); // Ensure the directory exists
            Files.copy(inputStream, path, StandardCopyOption.REPLACE_EXISTING);
            character.setThumbnailUrl( newFileName);
            repository.save(character);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}