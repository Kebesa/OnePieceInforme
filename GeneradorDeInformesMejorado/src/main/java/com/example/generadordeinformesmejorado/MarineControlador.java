package com.example.generadordeinformesmejorado;

import javafx.fxml.FXML;
import javafx.scene.control.ComboBox;
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

/**
 * En esta clase manejaremos las funciones de la interfaz de los marines.
 * @author Manol Hristov Manolov
 * @version 1.0
 * @since 1.0
 */
public class MarineControlador {
    /**
     * Con este valor recogeremos los valores del ComboBox sobre la generación de la interfaz.
     */
    @FXML
    private ComboBox<String> Generation;

    /**
     * Con este valor recogeremos los valores del ComboBox sobre el Rango de la interfaz.
     */
    @FXML
    private ComboBox<String> Rango;

    /**
     * Constructor por defecto.
     */
    public MarineControlador() {
    }

    /**
     * Con este método meteremos los textos que queramos en los ComboBox correspondientes.
     */
    @FXML
    public void initialize() {
        Generation.getItems().add("The Worst Generation");
        Generation.getItems().add("Era del Rey de los piratas");
        Rango.getItems().add("Almirante");
        Rango.getItems().add("Vicealmirante");
        Rango.getItems().add("Comandante");
    }

    /**
     * El método devolverá lo necesario para realizar el informe de Jasperreports.
     * @return Devuelve los parámetros necesarios para hacer el reporte de Jasperreports.
     */
    public Map<String, Object> parametros() {
        Map<String,Object> parametros = new HashMap();
        // Aquí indicaremos que estamos buscando un marine.
        parametros.put("Tipo", "Marine");
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
        // Aquí sacaremos el rango correspondiente con el que obtendremos a los marines que tengan ese mismo.
        if (Rango.getValue() == null){
            parametros.put("Rango", null);
        }
        else if (Rango.getValue().equals("Almirante")){
            parametros.put("Rango", "Almirante");
        }
        else if (Rango.getValue().equals("Vicealmirante")){
            parametros.put("Rango", "Vicealmirante");
        }
        else if (Rango.getValue().equals("Comandante")){
            parametros.put("Rango", "Comandante");
        }
        return parametros;
    }

    /**
     * Método para enviar el informe de los marines.
     * @throws SQLException           si ocurre un error con la base de datos.
     * @throws ClassNotFoundException si no se encuentra el driver de MySQL.
     * @throws JRException            si JasperReports tiene un fallo.
     */
    @FXML
    public void enviar() throws SQLException, ClassNotFoundException, JRException {
            // Aquí nos conectaremos a la base de datos correspondiente.
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/OnePiece", "root", "Pronic47");
            // Aquí sacaremos la ruta de nuestro archivo y en la que acabará nuestro reporte.
            String basePath = new File("src/main/resources/com/example/generadordeinformesmejorado/JaspersoftWorkspace/jardineria/Tree.jasper").getAbsolutePath();
            String finalPath = new File("src/main/resources/com/example/generadordeinformesmejorado/JaspersoftWorkspace/jardineria/InformeMarines.pdf").getAbsolutePath();
            // Aquí se rellenará nuestro importe con los parámetros que pusimos y lo exportaremos a pdf.
            JasperPrint print = JasperFillManager.fillReport(basePath, parametros(), conexion);
            JasperExportManager.exportReportToPdfFile(print, finalPath);
    }
}
