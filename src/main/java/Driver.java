
import java.time.LocalDate;
import java.util.ArrayList;


public class Driver {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        ArrayList<Email> emails = new ArrayList<>();

        emails.add(new Email(1, "Fikri", "Nama saya Fikri", "Saya dari Bandung", LocalDate.now(), true));
        emails.add(new Email(2, "Adul", "Nama saya Adul", "Saya dari Perwakarta", LocalDate.now(), false));
        emails.add(new Email(3, "Raput", "Nama saya Raput", "Saya dari Jakarta", LocalDate.now(), true));

        System.out.println("All Emails:");
        emails.forEach((email) -> {
            email.display();
        });

        System.out.println("Starred Emails:");
        emails.stream().filter((email) -> (email.isStarred())).forEachOrdered((email) -> {
            email.display();
        });
    }
}
