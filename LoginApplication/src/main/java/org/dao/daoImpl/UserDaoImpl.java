package org.dao.daoImpl;

import org.dao.UserDao;
import org.database.Database;
import org.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    private static Connection connection;
    private static PreparedStatement preparedStatement;
    private static ResultSet resultSet;

    public User checkUser(User user) {
        final String QUERY= "SELECT *FROM users WHERE username = ? and password=?";
        User userData = new User();
        try {
            connection = Database.getConnection();
            preparedStatement = connection.prepareStatement(QUERY);
            preparedStatement.setString(1, user.getUsername());;
            preparedStatement.setString(2, user.getPassword());

            resultSet = preparedStatement.executeQuery();

            while(resultSet.next()) {
                userData.setFirstName(resultSet.getString("firstName"));
                userData.setLastName(resultSet.getString("lastName"));
                return userData;
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return null;
    }
}
