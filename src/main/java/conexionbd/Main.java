package conexionbd;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSetMetaData;

public class Main {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/TUSPROCESOSYA";
        String username = "root";
        String password = "Rosamistica";

        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            System.out.println("Connected successfully!");

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM Registros");

            // Obtén los metadatos del ResultSet
            ResultSetMetaData rsmd = resultSet.getMetaData();
            int columnsNumber = rsmd.getColumnCount();

            // Itera a través del ResultSet, por fila
            while (resultSet.next()) {
                // Itera a través de todas las columnas en esta fila
                for (int i = 1; i <= columnsNumber; i++) {
                    String columnValue = resultSet.getString(i);
                    // Imprime el valor de la columna
                    System.out.println(rsmd.getColumnName(i) + ": " + columnValue);
                }
                System.out.println("---------------------");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

