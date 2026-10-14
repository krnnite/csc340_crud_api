package character.cosmos.demo.CharacterCosmos;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CharacterRepository extends JpaRepository<FictionCharacter, Long> {

    List<FictionCharacter> findByUniverse(String universe);

    // Partial, case-insensitive match
    // Spring reads the method name: Name + Containing + IgnoreCase.
    List<FictionCharacter> findByNameContainingIgnoreCase(String name);

    // Both filters at once.
    List<FictionCharacter> findByNameContainingIgnoreCaseAndUniverse(String name, String universe);
}