package com.example.generadordeinformesmejorado;

import javafx.fxml.FXML;
import javafx.scene.control.*;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

import java.io.File;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/**
 * En esta clase manejaremos las funciones de la interfaz de los piratas.
 * @author Manol Hristov Manolov
 * @version 1.0
 * @since 1.0
 */
public class PiratasControlador {
    /**
     * Con este valor recogeremos los valores del ComboBox sobre la generación de la interfaz.
     */
    @FXML
    private ComboBox<String> Generation;

    /**
     * Con este botón recogeremos si el queremos que la recompensa sea mayor para más adelante.
     */
    @FXML
    private RadioButton Mayor;

    /**
     * Con este botón recogeremos si el queremos que la recompensa sea menor para más adelante.
     */
    @FXML
    private RadioButton Menor;

    /**
     * Con este botón recogeremos la recompensa que queramos para más adelante.
     */
    @FXML
    private TextField Recompensa;

    /**
     * Constructor por defecto.
     */
    public PiratasControlador() {
    }

    /**
     * Con este método meteremos los textos que queramos en los ComboBox correspondientes.
     */
    @FXML
    public void initialize() {
        Generation.getItems().add("The Worst Generation");
        Generation.getItems().add("Era del Rey de los piratas");
    }

    /**
     * El método devolverá lo necesario para realizar el informe de Jasperreports.
     * @return Devuelve los parámetros necesarios para hacer el reporte de Jasperreports.
     */
    public Map<String, Object> parametros() {
        Map<String,Object> parametros = new HashMap();
        // Aquí indicaremos que estamos buscando un pirata.
        parametros.put("Tipo", "Pirata");
        // Aquí meteremos las imágenes correspondientes para que salgan en nuestro reporte.
        parametros.put("MarineLogo", getClass().getResource("images/pngegg.png").toString());
        parametros.put("WGLogo", getClass().getResource("images/World_Government.png").toString());
        // Aquí sacaremos la generación correspondiente con la que obtendremos a los marines que provengan de ella.
        if (Generation.getValue() == null){
            parametros.put("Edad", null);
            parametros.put("ComparadorEdad", null);
        }
        else if (Generation.getValue().equals("The Worst Generation")) {
            parametros.put("Edad", 30);
            parametros.put("ComparadorEdad", "<");
        }
        else if (Generation.getValue().equals("Era del Rey de los piratas")) {
            parametros.put("Edad", 30);
            parametros.put("ComparadorEdad", ">");
        }
        // Aquí sacaremos la recompensa correspondiente y si queremos que el pirata que buscamos tenga más o menos que lo que hemos indicado.
        if (Mayor.isSelected()) {
            parametros.put("Recompensa", Integer.parseInt(Recompensa.getText()));
            parametros.put("ComparadorRecompensa", ">");
        }
        else if (Menor.isSelected()) {
            parametros.put("Recompensa", Integer.parseInt(Recompensa.getText()));
            parametros.put("ComparadorRecompensa", "<");
        }
        return parametros;
    }

    /**
     * Método para enviar el informe de los piratas.
     * @throws SQLException Esta excepción aparecerá si no se encuentra algún dato en la base de datos.
     * @throws ClassNotFoundException Esta excepción aparecerá si no se encuentra ningún controlador para la base de datos.
     * @throws JRException Esta excepción aparecerá si falla algo con el Jasperreports.
     */
    @FXML
    public void enviar() throws ClassNotFoundException, SQLException, JRException {
            // Aquí nos conectaremos a la base de datos correspondiente.
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/OnePiece", "root", "Pronic47");
            // Aquí sacaremos la ruta de nuestro archivo y en la que acabará nuestro reporte.
            String basePath = new File("src/main/resources/com/example/generadordeinformesmejorado/JaspersoftWorkspace/jardineria/Tree.jasper").getAbsolutePath();
            String finalPath = new File("src/main/resources/com/example/generadordeinformesmejorado/JaspersoftWorkspace/jardineria/InformePirata.pdf").getAbsolutePath();
            // Aquí se rellenará nuestro importe con los parámetros que pusimos y lo exportaremos a pdf.
            JasperPrint print = JasperFillManager.fillReport(basePath, parametros(), conexion);
            JasperExportManager.exportReportToPdfFile(print, finalPath);
    }
}
