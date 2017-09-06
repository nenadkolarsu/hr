/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Writesheet;

import forme.SearchWithTab;
import java.awt.Desktop;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import konekcija.konekcija;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author ms
 */
public class KartonExcel extends javax.swing.JFrame {

    private Connection conn = null;

    /**
     * Creates new form KartonExcel
     *
     * @param <error>
     */
    public KartonExcel() {

        initComponents();
        PisiUExcel();
    }

//    public PisiUExcel(Connection conn) {
//        this.conn = conn;
    /**
     *
     */
    public void PisiUExcel() {
        try {
//        this.conn = conn;
//        initComponents();
//        if (conn = null) {
            konekcija n = new konekcija();
            conn = n.konekcija();
//        }
//        try {
            Statement stmt = null;
            try {
                stmt = conn.createStatement();
            } catch (SQLException ex) {
                Logger.getLogger(KartonExcel.class.getName()).log(Level.SEVERE, null, ex);
            }
            String sqlQuery = " select * from licni_podaci where id like '27"
                    + "'";
            sqlQuery = " select * from licni_podaci where aktivan=1 order by id ";
            ResultSet rs = null;
            XSSFWorkbook workbook = new XSSFWorkbook();
            try {
                rs = stmt.executeQuery(sqlQuery);
            } catch (SQLException ex) {
                Logger.getLogger(KartonExcel.class.getName()).log(Level.SEVERE, null, ex);
            }
            int rb = 1;
//            Map< String, Object[]> empinfo = new TreeMap< String, Object[]>();
            Map< Integer, Object[]> empinfo = new TreeMap< Integer, Object[]>();
            empinfo.put(1, new Object[]{
                "ID", "JMBG", "OSLOVLJAVANJE", "CRKVENA TITULA", "AKADEMSKA TITULA",
                "IME", "PREZIME", "IME OCA",
                "IME_MAJKE", "TELEFON", "EMAIL",
                "ZUPA", "BANKA", "TEKUCI RACUN"
            });
            XSSFSheet spreadsheet = null;
            XSSFRow row;
            spreadsheet = workbook.createSheet(
                    "prvi");
            while ((rs.next())) {
                //Create a blank sheet
//                spreadsheet = workbook.createSheet(
//                        rs.getString("jmbg"));
                //Create row object
                //This data needs to be written (Object[])
                rb++;
//                empinfo.put(Integer.toString(rb), new Object[]{
                empinfo.put(rb, new Object[]{
                    rs.getString("id"), rs.getString("jmbg"),
                    rs.getString("oslovljavanje"), rs.getString("crkvena_titula"), rs.getString("akademska_titula"),
                rs.getString("ime"), rs.getString("prezime"), rs.getString("ime_oca"),
                        rs.getString("ime_majke"), rs.getString("telefon"), rs.getString("e_mail"),
                         rs.getString("zupa_naziv"), rs.getString("banka"), rs.getString("tekuci_racun")
                });
//            empinfo.put("3", new Object[]{
//                "tp02", "Manisha", "Proof Reader"});
//            empinfo.put("4", new Object[]{
//                "tp03", "Masthan", "Technical Writer"});
//            empinfo.put("5", new Object[]{
//                "tp04", "Satish", "Technical Writer"});
//            empinfo.put("6", new Object[]{
//                "tp05", "Krishna", "Technical Writer"});

//                            Set< String> keyid = empinfo.keySet();
//            int rowid = 0;
//            for (String key : keyid) {
//                row = spreadsheet.createRow(rowid++);
//                Object[] objectArr = empinfo.get(key);
//                int cellid = 0;
//                for (Object obj : objectArr) {
//                    Cell cell = row.createCell(cellid++);
//                    cell.setCellValue((String) obj);
//                }
            }
//                            Set< String> keyid = empinfo.keySet();
            Set< Integer> keyid = empinfo.keySet();
            int rowid = 0;
//            for (String key : keyid) {
            for (Integer key : keyid) {
                row = spreadsheet.createRow(rowid++);
                Object[] objectArr = empinfo.get(key);
                int cellid = 0;
                for (Object obj : objectArr) {
                    Cell cell = row.createCell(cellid++);
                    cell.setCellValue((String) obj);
                }
            }

            rs.close();

            //Write the workbook in file system
            FileOutputStream out = null;
            try {
                out = new FileOutputStream(
                        new File("Writesheet.xlsx"));
            } catch (FileNotFoundException ex) {
                Logger.getLogger(KartonExcel.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                workbook.write(out);
            } catch (IOException ex) {
                Logger.getLogger(KartonExcel.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                out.close();
            } catch (IOException ex) {
                Logger.getLogger(KartonExcel.class.getName()).log(Level.SEVERE, null, ex);
            }
            System.out.println(
                    "Writesheet.xlsx written successfully");
//   }           
//            while (rs.next()) {
//
//            }
//
            try {
                Desktop.getDesktop().open(new File("Writesheet.xlsx"));
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Message " + ex, "Title", JOptionPane.ERROR_MESSAGE);
//        }
        } catch (SQLException ex) {
            Logger.getLogger(KartonExcel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(KartonExcel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(KartonExcel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(KartonExcel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(KartonExcel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
//                 new KartonExcel().setVisible(true);
                new KartonExcel();
                
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
