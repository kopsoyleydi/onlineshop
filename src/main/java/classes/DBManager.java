package classes;

import java.sql.*;
import java.util.ArrayList;

public class DBManager {
    private static Connection connection;

    static {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/items?useUnicode=true&serverTimezone=UTC", "root","");
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
    public static ArrayList<Users> getUsers(){

        ArrayList<Users> users = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM users");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                Long id = resultSet.getLong("id");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                String fullName = resultSet.getString("full_name");
                users.add(new Users(id, email,password,fullName));
            }
            statement.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }

    public static ArrayList<Items> getItems(){

        ArrayList<Items> items = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM items");

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                items.add(new Items(id, name,description,price));
            }
            statement.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return items;
    }

}
