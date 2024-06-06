import java.time.LocalDate;
import java.util.ArrayList;

public class Driver {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        ArrayList<Email> emails = new ArrayList<>();
        
        // Variabel yang tidak digunakan
        int unusedVariable = 0;

        emails.add(new Email(1, "Fikri", "Nama saya Fikri", "Saya dari Bandung", LocalDate.now(), true));
        emails.add(new Email(2, "Adul", "Nama saya Adul", "Saya dari Perwakarta", LocalDate.now(), false));
        emails.add(new Email(3, "Raput", "Nama saya Raput", "Saya dari Jakarta", LocalDate.now(), true));

        // Nama variabel yang tidak jelas
        String a = "Some unnecessary string";
        System.out.println(a);

        System.out.println("All Emails:");
        emails.forEach((email) -> {
            email.display();
        });

        System.out.println("Starred Emails:");
        emails.stream().filter((email) -> (email.isStarred())).forEachOrdered((email) -> {
            email.display();
        });

        // Blok try-catch yang tidak melakukan apa-apa
        try {
            // TODO: Tambahkan logika penanganan pengecualian yang benar di sini
            int result = 10 / 0;
        } catch (Exception e) {
            // Penanganan pengecualian kosong
        }
    }
}

class Email {
    private int id;
    private String sender;
    private String subject;
    private String body;
    private LocalDate date;
    private boolean starred;

    public Email(int id, String sender, String subject, String body, LocalDate date, boolean starred) {
        this.id = id;
        this.sender = sender;
        this.subject = subject;
        this.body = body;
        this.date = date;
        this.starred = starred;
    }

    public boolean isStarred() {
        return starred;
    }

    public void display() {
        System.out.println("ID: " + id);
        System.out.println("Sender: " + sender);
        System.out.println("Subject: " + subject);
        System.out.println("Body: " + body);
        System.out.println("Date: " + date);
        System.out.println("Starred: " + starred);
    }
}
