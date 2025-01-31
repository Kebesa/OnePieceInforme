module com.example.generadordeinformesmejorado {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.desktop;
    requires java.sql;
    requires net.sf.jasperreports.core;
    requires mysql.connector.java;

    opens com.example.generadordeinformesmejorado to javafx.fxml;
    exports com.example.generadordeinformesmejorado;
}