import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class Database {
    private String filePath;

    public Database(String filePath) {
        this.filePath = filePath;
    }

    public void saveUser (User user) {
        try (FileWriter fw = new FileWriter(filePath, true);
             BufferedWriter bw = new BufferedWriter(fw)) {
            bw.write(user.toText());
            bw.newLine();
            System.out.println("User  saved!");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<User> readUsers() {
        List<User> users = new ArrayList<>();
        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] data = line.split(",");
                if (data.length == 3) {
                    users.add(new User(data[0], data[1], data[2]));
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return users;
    }
    public static void main(String[] args) {
        Database db = new Database("users.txt");

        User newUser  = new User("", "", "");

        db.saveUser (newUser );

        List<User> users = db.readUsers();
        for (User  user : users) {
            System.out.println("Username: " + user.getUsername() + ", Email: " + user.getEmail());
        }
    }
}