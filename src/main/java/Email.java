import java.time.LocalDate;

public class Email {
    private int id;
    private String sender;
    private String subject;
    private String content;
    private LocalDate date;
    private boolean starred;

    public Email(int id, String sender, String subject, String content, LocalDate date, boolean starred) {
        this.id = id;
        this.sender = sender;
        this.subject = subject;
        this.content = content;
        this.date = date;
        this.starred = starred;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSender() {
        return sender;
}

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public boolean isStarred() {
        return starred;
    }

    public void setStarred(boolean starred) {
        this.starred = starred;
    }

    public void display() {
        System.out.println("ID: " + id);
        System.out.println("Sender: " + sender);
        System.out.println("Subject: " + subject);
        System.out.println("Content: " + content);
        System.out.println("Date: " + date);
        System.out.println("Starred: " + starred);
        System.out.println("--------------------");
    }
}
