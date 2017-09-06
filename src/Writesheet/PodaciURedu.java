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
public class PodaciURedu extends javax.swing.JFrame {

    private Connection conn = null;

    /**
     * Creates new form KartonExcel
     *
     * @param <error>
     */
    public PodaciURedu() {

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
                Logger.getLogger(PodaciURedu.class.getName()).log(Level.SEVERE, null, ex);
            }
            String sqlQuery = " select * from licni_podaci where id like '27"
                    + "'";
            sqlQuery = " select * from licni_podaci where aktivan=1 order by id ";
            sqlQuery = " select licni_podaci.id, jmbg, licni_podaci.oslovljavanje, crkvena_titula, \n"
                    + "akademska_titula,\n"
                    + "ime, prezime, ime_oca, ime_majke, licni_podaci.telefon, e_mail, banka, tekuci_racun,\n"
                    + "zupa.id, zupa.pak, zupa.telefon, zupa.fax, zupa.email, zupa.web, zupa.sifra, zupa.naziv, \n"
                    + "zupa.jezicnost, zupa.arhiprezbiterat, \n "
                    + "zupa.dekanat, zupa.oslovljavanje, titul_zupe, zupa.adresa, zupa.ptt_broj, zupa.mesto, \n"
                    + "ustanove.id, ustanove.pak, ustanove.telefon, ustanove.fax, ustanove.email, "
                    + "ustanove.web, ustanove.sifra, ustanove.naziv, \n"
                    + "ustanove.adresa, ustanove.ptt_broj, ustanove.mesto \n"
                    + " from licni_podaci \n"
                    + "left join zupa \n"
                    + "ON licni_podaci.zupa_id = zupa.id \n"
                    + "left join ustanove \n"
                    + "ON licni_podaci.ustanova_id = ustanove.id \n"                    
                    + "ORDER BY licni_podaci.id";

            System.out.println(sqlQuery);

            ResultSet rs = null;
            XSSFWorkbook workbook = new XSSFWorkbook();
            try {
                rs = stmt.executeQuery(sqlQuery);
            } catch (SQLException ex) {
                Logger.getLogger(PodaciURedu.class.getName()).log(Level.SEVERE, null, ex);
            }
            int rb = 1;
//            Map< String, Object[]> empinfo = new TreeMap< String, Object[]>();
            Map< Integer, Object[]> empinfo = new TreeMap< Integer, Object[]>();
            empinfo.put(1, new Object[]{
                "ID", "JMBG", "OSLOVLJAVANJE", "CRKVENA TITULA", "AKADEMSKA TITULA",
                "IME", "PREZIME", "IME OCA",
                "IME_MAJKE", "TELEFON", "EMAIL",
                "BANKA", "TEKUCI RACUN",
                "ZUPA_ID", "ZUPA_SIFRA", "ZUPA_NAZIV",
                "ADRESA", "PTT BROJ", "MESTO", "PAK",
                "USTANOVA_ID", "USTANOVA_SIFRA", "USTANOVA_NAZIV",
                "ADRESA", "PTT BROJ", "MESTO", "PAK"
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
                    rs.getString("banka"), rs.getString("tekuci_racun"),
                    rs.getString("zupa.id"), rs.getString("zupa.sifra"), rs.getString("zupa.naziv"),
                    rs.getString("zupa.adresa"), rs.getString("zupa.ptt_broj"), rs.getString("zupa.mesto"), rs.getString("zupa.pak"),
                    rs.getString("ustanove.id"), rs.getString("ustanove.sifra"), rs.getString("ustanove.naziv"),
                    rs.getString("ustanove.adresa"), rs.getString("ustanove.ptt_broj"), rs.getString("ustanove.mesto"), 
                    rs.getString("ustanove.pak"),
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
                        new File("PodaciURedu.xlsx"));
            } catch (FileNotFoundException ex) {
                Logger.getLogger(PodaciURedu.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                workbook.write(out);
            } catch (IOException ex) {
                Logger.getLogger(PodaciURedu.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                out.close();
            } catch (IOException ex) {
                Logger.getLogger(PodaciURedu.class.getName()).log(Level.SEVERE, null, ex);
            }
            System.out.println(
                    "Writesheet.xlsx written successfully");
//   }           
//            while (rs.next()) {
//
//            }
//
            try {
                Desktop.getDesktop().open(new File("PodaciURedu.xlsx"));
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Message " + ex, "Title", JOptionPane.ERROR_MESSAGE);
//        }
        } catch (SQLException ex) {
            Logger.getLogger(PodaciURedu.class.getName()).log(Level.SEVERE, null, ex);
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
            java.util.logging.Logger.getLogger(PodaciURedu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(PodaciURedu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(PodaciURedu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(PodaciURedu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
//                 new KartonExcel().setVisible(true);
                new PodaciURedu();

            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
