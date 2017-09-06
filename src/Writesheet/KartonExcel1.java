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
public class KartonExcel1 extends javax.swing.JFrame {

    private Connection conn = null;
    private String mId;

    /**
     * Creates new form KartonExcel
     *
     * @param <error>
     */
    public KartonExcel1() {

        initComponents();
        PisiUExcel();
    }
        public KartonExcel1(String mId) {
        this.mId=mId;
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
                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
            }
            String sqlQuery;
            if (mId.length()>0) {
            sqlQuery = " select * from licni_podaci where id like '" + mId 
                    + "'";
            }
            else {
            sqlQuery = " select * from licni_podaci where aktivan=1 order by id ";
            }
            ResultSet rs = null;
            XSSFWorkbook workbook = new XSSFWorkbook();
            try {
                rs = stmt.executeQuery(sqlQuery);
            } catch (SQLException ex) {
                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
            }
            int rb = 1;
//            Map< String, Object[]> empinfo = new TreeMap< String, Object[]>();
            Map< Integer, Object[]> empinfo = new TreeMap< Integer, Object[]>();

            XSSFSheet spreadsheet = null;
            XSSFRow row;
//            spreadsheet = workbook.createSheet(
//                    "prvi");
            while ((rs.next())) {
                //Create a blank sheet
                spreadsheet = workbook.createSheet(
                        rs.getString("jmbg"));
                //Create row object
                //This data needs to be written (Object[])
                empinfo.put(1, new Object[]{
                    "ID", rs.getString("id"), "PREZIME", "IME"
//                                    , "CRKVENA TITULA", "AKADEMSKA TITULA",
//                "IME", "PREZIME", "IME OCA",
//                "IME_MAJKE", "TELEFON", "EMAIL",
//                "ZUPA", "BANKA", "TEKUCI RACUN"
                });
                rb++;
//                empinfo.put(Integer.toString(rb), new Object[]{
                empinfo.put(rb, new Object[]{
                    "OSLOVLJAVANJE", rs.getString("oslovljavanje"), rs.getString("ime_u_lk"),
                    rs.getString("prezime_u_lk")
//                        , rs.getString("crkvena_titula"), rs.getString("akademska_titula"),
//                rs.getString("ime"), rs.getString("prezime"), rs.getString("ime_oca"),
//                        rs.getString("ime_majke"), rs.getString("telefon"), rs.getString("e_mail"),
//                         rs.getString("zupa_naziv"), rs.getString("banka"), rs.getString("tekuci_racun")
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    "CRKVENA TITULA", rs.getString("crkvena_titula"), rs.getString("ime"),
                    rs.getString("prezime")});
                rb++;
                empinfo.put(rb, new Object[]{
                    "AKADEMSKA TITULA", rs.getString("akademska_titula")});
                rb++;
                empinfo.put(rb, new Object[]{
                    "IME OCA I MAJKE", rs.getString("ime_oca"), rs.getString("ime_majke")
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    "JMBG", rs.getString("jmbg"), "Mesto rodjenja", rs.getString("mesto_rodjenja"),
                    "DATUM RODJENJA", rs.getString("datum_rodjenja")
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    "SREDNJE OBRAZOVANJE", "", "NAZIV SKOLE", "",
                    "OD", "DO"
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    rs.getString("srednje_obrazovanje_mesto"), "", rs.getString("srednje_obrazovanje_skola"),
                    "", rs.getString("srednje_obrazovanje_od"), rs.getString("srednje_obrazovanje_do")
                });

                rb++;
                empinfo.put(rb, new Object[]{
                    "BOGOSLOVIJA MESTO", "", "", "",
                    "OD", "DO"
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    rs.getString("bogoslovija_mesto"), "", "", "", rs.getString("bogoslovija_period_od"),
                    rs.getString("bogoslovija_period_do")
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    rs.getString("bogoslovija_mesto1"), "", "", "", rs.getString("bogoslovija_period_od1"),
                    rs.getString("bogoslovija_period_do1")
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    rs.getString("bogoslovija_mesto2"), "", "", "", rs.getString("bogoslovija_period_od2"),
                    rs.getString("bogoslovija_period_do2")
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    "DJAKONAT MESTO", "DJAKONAT DATUM", "", "",
                    "OD", "DO"
                });
                String aa = rs.getString("djakonat_datum");
                String bb = aa == null ? "" : rs.getString("djakonat_datum");
                bb = aa == "0000-00-00" ? "" : rs.getString("djakonat_datum");
                rb++;
                empinfo.put(rb, new Object[]{
                    rs.getString("djakonat_mesto"), "", "", "",
                    bb,
                    //                    rs.getString("djakonat_datum"==null)?"":rs.getString("djakonat_datum"),
                    rs.getString("djakonat_zareditelj")
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    "PREZBITERAT MESTO", "PREZBITERAT DATUM", "", "",
                    "ZAREDITELJ", "DO"
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    rs.getString("prezbiterat_mesto"), "", "", "", rs.getString("prezbiterat_datum"),
                    rs.getString("prezbiterat_zareditelj")
                });

                rb++;
                empinfo.put(rb, new Object[]{
                    "DO DIPL.STUDIJI MESTO", "", "USTANOVA", "",
                    "OD", "DO"
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    rs.getString("dodiplomski_studij_mesto"), "", "", "", rs.getString("dodiplomski_studij_naziv_ustanove"),
                    rs.getString("dodiplomski_studij_period_od"), rs.getString("dodiplomski_studij_period_do")
                });

                rb++;
                empinfo.put(rb, new Object[]{
                    "MAGISTERIJ MESTO", "", "USTANOVA", "",
                    "OD", "DO"
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    rs.getString("magisterij_mesto"), "", "", "", rs.getString("magisterij_naziv_ustanove"),
                    rs.getString("magisterij_period_od"), rs.getString("magisterij_period_do")
                });

                rb++;
                empinfo.put(rb, new Object[]{
                    "DOKTORAT MESTO", "", "USTANOVA", "",
                    "OD", "DO"
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    rs.getString("doktorat_mesto"), "", "", "", rs.getString("doktorat_naziv_ustanove"),
                    rs.getString("doktorat_period_od"), rs.getString("doktorat_period_do")
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    "PODACI O PASTORALNOJ SLUZBI", "", "", "",
                    "", ""
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    "RB", "MESTO", "USTANOVA", "DEKRET", "ZUPA","SVOJSTVO",
                    "OD", "DO"
                }); 
                
                Statement stmt1 = conn.createStatement();
//                            try {
//
//            } catch (SQLException ex) {
//                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
//            }
                String sqlQuery1 = " select * from podaci_o_pastoralnoj_sluzbi where aktivan=1 and user_id='"
                        +rs.getString("id")+"' order by pocetak_sluzbe_od desc ";
                        System.out.println(sqlQuery1
                    );
            ResultSet rs1 = null;
            try {
                rs1 = stmt1.executeQuery(sqlQuery1);
            } catch (SQLException ex) {
                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
            }
            while ((rs1.next())) {
                                rb++;
                empinfo.put(rb, new Object[]{
                    rs1.getString("rbr"),  rs1.getString("mesto_sluzbe"),
                    rs1.getString("naziv_ustanove"), rs1.getString("dekret")
                        , rs1.getString("naziv_zupe"),
                    rs1.getString("svojstvo"), rs1.getString("pocetak_sluzbe_od"), 
                    rs1.getString("trajanje_sluzbe_do")
                });
            }
            
                           rb++;
                empinfo.put(rb, new Object[]{
                    "PODACI O DODATNIM SLUŽBAMA", "", "", "",
                    "", ""
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    "RB", "MESTO", "NAZIV SLUŽBE", 
                    "OD", "DO"
                }); 
                
                Statement stmt2 = conn.createStatement();
//                            try {
//
//            } catch (SQLException ex) {
//                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
//            }
                String sqlQuery2 = " select * from podaci_o_dodatnoj_sluzbi where aktivan=1 and user_id='"
                        +rs.getString("id")+"' order by pocetak_sluzbe_od desc ";
                        System.out.println(sqlQuery1
                    );
            ResultSet rs2 = null;
            try {
                rs2 = stmt2.executeQuery(sqlQuery2);
            } catch (SQLException ex) {
                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
            }
            while ((rs2.next())) {
                                rb++;
                empinfo.put(rb, new Object[]{
                    rs2.getString("rbr"),  rs2.getString("mesto_sluzbe"),
                    rs2.getString("svojstvo"),  rs2.getString("pocetak_sluzbe_od"), 
                    rs2.getString("trajanje_sluzbe_do")
                });
            }
            
                                       rb++;
                empinfo.put(rb, new Object[]{
                    "PODACI O PRIJAVI I OSIGURANJU", "", "", "",
                    "", ""
                });
                rb++;
                empinfo.put(rb, new Object[]{
                    "RB", "MESTO", "SVOJSTVO OSIGURANIKA", 
                    "OD", "DO"
                }); 
                
                Statement stmt3 = conn.createStatement();
//                            try {
//
//            } catch (SQLException ex) {
//                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
//            }
                String sqlQuery3 = " select * from podaci_o_prijavi_i_osiguranju where aktivan=1 and user_id='"
                        +rs.getString("id")+"' order by pocetak_od desc ";
                        System.out.println(sqlQuery3
                    );
            ResultSet rs3 = null;
            try {
                rs3 = stmt3.executeQuery(sqlQuery3);
            } catch (SQLException ex) {
                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
            }
            while ((rs3.next())) {
                                rb++;
                empinfo.put(rb, new Object[]{
                    rs3.getString("rbr"),  rs3.getString("mesto"),
                    rs3.getString("svojstvo_osiguranika"),  rs3.getString("pocetak_od"), 
                    rs3.getString("trajanje_do")
                });
            }
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
                break;
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
                        new File("KartonExcel1.xlsx"));
            } catch (FileNotFoundException ex) {
                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                workbook.write(out);
            } catch (IOException ex) {
                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                out.close();
            } catch (IOException ex) {
                Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
            }
//            System.out.println(
//                    "Writesheet.xlsx written successfully");
//   }           
//            while (rs.next()) {
//
//            }
//
            try {
                Desktop.getDesktop().open(new File("KartonExcel1.xlsx"));
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Message " + ex, "Title", JOptionPane.ERROR_MESSAGE);
//        }
        } catch (SQLException ex) {
            Logger.getLogger(KartonExcel1.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Message " + ex, "Title", JOptionPane.ERROR_MESSAGE);
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
            java.util.logging.Logger.getLogger(KartonExcel1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(KartonExcel1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(KartonExcel1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(KartonExcel1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
//                 new KartonExcel().setVisible(true);
                new KartonExcel1();

            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
