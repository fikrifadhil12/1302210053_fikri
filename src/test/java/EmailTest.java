

import java.time.LocalDate;
import static org.junit.Assert.*;
import org.junit.Test;

public class EmailTest {
    @Test
    public void testGettersAndSetters() {
        Email email = new Email(1, "Fikri", "Nama saya Fikri", "Saya dari Bandung", LocalDate.now(), true);

        // Test getters
        assertEquals(1, email.getId());
        assertEquals("Fikri", email.getSender());
        assertEquals("Nama saya Fikri", email.getSubject());
        assertEquals("Saya dari Bandung", email.getContent());
        assertEquals(LocalDate.now(), email.getDate());
        assertTrue(email.isStarred());

        // Test setters
        email.setId(2);
        email.setSender("Adul");
        email.setSubject("Nama saya Adul");
        email.setContent("Saya dari Perwakarta");
        email.setDate(LocalDate.of(2020, 1, 1));
        email.setStarred(false);

        assertEquals(2, email.getId());
        assertEquals("Adul", email.getSender());
        assertEquals("Nama saya Adul", email.getSubject());
        assertEquals("Saya dari Perwakarta", email.getContent());
        assertEquals(LocalDate.of(2020, 1, 1), email.getDate());
        assertFalse(email.isStarred());
    }

    @Test
    public void testDisplay() {
        Email email = new Email(3, "Raput", "Nama saya Raput", "Saya dari Jakarta", LocalDate.now(), true);

        // Since display() prints to the console, we'll just check that it runs without exceptions.
        email.display();
    }
}
