package com.example.generadordeinformesmejorado;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.image.Image;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.HashMap;
import java.util.Map;

/**
 * En esta clase manejaremos las funciones de la interfaz principal de nuestro generador de interfaces.
 * @author Manol Hristov Manolov
 * @version 1.0
 * @since 1.0
 */
public class PrimerControlador {
    /**
     * Constructor por defecto.
     */
    public PrimerControlador() {
    }

    /**
     * Usaremos este método para que cuando le demos al botón se abra la ventana para generar el informe sobre los piratas.
     * @throws RuntimeException Lanzaremos una excepción si ocurre un fallo a la hora de abrir el informe.
     */
    @FXML
    public void PiratasAbrir() {
        try {
            FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("piratas.fxml"));
            Parent root1 = (Parent) fxmlLoader.load();
            Stage stage1 = new Stage();
            stage1.setTitle("Piratas");
            stage1.setScene(new Scene(root1));
            Image icon = new Image(getClass().getResourceAsStream("images/JollyRogerMugiwara.png"));
            stage1.getIcons().add(icon);
            stage1.show();
        } catch (IOException e) {
            throw new RuntimeException();
        }
    }

    /**
     * Usaremos este método para que cuando le demos al botón se abra la ventana para generar el informe sobre los marines.
     * @throws RuntimeException Lanzaremos una excepción si ocurre un fallo a la hora de abrir el informe.
     */
    @FXML
    public void MarineAbrir() {
        try {
            FXMLLoader fxmlLoader2 = new FXMLLoader(getClass().getResource("marine.fxml"));
            Parent root2 = (Parent) fxmlLoader2.load();
            Stage stage2 = new Stage();
            stage2.setTitle("Marine");
            stage2.setScene(new Scene(root2));
            Image icon = new Image(getClass().getResourceAsStream("images/World_Government.png"));
            stage2.getIcons().add(icon);
            stage2.show();
        } catch (IOException e) {
            throw new RuntimeException();
        }
    }

    /**
     * Usaremos este método para que cuando le demos al botón se abra el manual de ayuda.
     * @throws RuntimeException Lanzaremos una excepción si ocurre un fallo a la hora de abrir el manual de ayuda.
     */
    @FXML
    public void Ayuda() {
        try {
            File html = new File("src/main/resources/com/example/generadordeinformesmejorado/Manual de ayuda/Manual de ayuda.html");
            URI url = html.toURI();
            Desktop.getDesktop().browse(url);
        } catch (IOException e) {
            throw new RuntimeException();
        }
    }
}