package com.example.generadordeinformesmejorado;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

import java.io.IOException;

/**
 * En esta clase ejecutaremos y abriremos la aplicación.
 * @author Manol Hristov Manolov
 * @version 1.0
 * @since 1.0
 */
public class Main extends Application {
    /**
     * Constructor por defecto.
     */
    public Main() {
    }
    /**
     * En este método lanzaremos nuestra aplicación.
     * @param stage El stage será la aplicación en sí de nuestro programa, la cual lanzaremos con el método.
     */
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(Main.class.getResource("hello-view.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 280, 275);
        stage.setTitle("One Piece's Reports");
        stage.getIcons().add(new Image(Main.class.getResourceAsStream("images/JollyRogerMugiwara.png")));
        stage.setScene(scene);
        stage.show();
    }

    /**
     * El main donde lanzaremos nuestra aplicación.
     * @param args Lo necesario para ejecturar el main.
     */
    public static void main(String[] args) {
        launch();
    }
}