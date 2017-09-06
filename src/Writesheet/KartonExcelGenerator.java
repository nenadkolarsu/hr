/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Writesheet;

import forme.SearchWithTab;
import java.awt.Desktop;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import konekcija.konekcija;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author ms
 */
public class KartonExcelGenerator extends javax.swing.JFrame {

    private Connection conn = null;
    String itemSql = "";
    String itemSqlSaApostrofom = "";

    /**
     * Creates new form KartonExcel
     *
     * @param <error>
     */
    public KartonExcelGenerator() {

        initComponents();

        konekcija n = new konekcija();
        conn = n.konekcija();
        try {
            //        PisiUExcel();
            uzmiKolone();
        } catch (SQLException ex) {
            Logger.getLogger(KartonExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    public PisiUExcel(Connection conn) {
//        this.conn = conn;
    /**
     *
     */
    public void uzmiKolone() throws SQLException {
//    Connection conn = getMySqlConnection();
        System.out.println("Got Connection.");
        Statement st = conn.createStatement();
//    st.executeUpdate("drop table survey;");
//    st.executeUpdate("create table survey (id int,name varchar(30));");
//    st.executeUpdate("insert into survey (id,name ) values (1,'nameValue')");

        st = conn.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM licni_podaci");

        ResultSetMetaData rsMetaData = rs.getMetaData();

        int numberOfColumns = rsMetaData.getColumnCount();
        System.out.println("resultSet MetaData column Count=" + numberOfColumns);
        TreeMap<String, Integer> jmbgMap = new TreeMap<String, Integer>();    //
        List<JCheckBox> checkboxes = new ArrayList<>();
        JPanel panel = new JPanel();
//        jPanel1.setLayout(new BoxLayout(BoxLayout.Y_AXIS, jPanel1));
        for (int i = 1; i <= numberOfColumns; i++) {

            if ((rsMetaData.getColumnLabel(i).endsWith("id") || rsMetaData.getColumnLabel(i).endsWith("sifra")
                    || rsMetaData.getColumnLabel(i).startsWith("id")) && !rsMetaData.getColumnLabel(i).equals("id")) // ide samo id
            {
                continue;
            }
            JCheckBox box = new JCheckBox(rsMetaData.getColumnLabel(i));
            box.setSelected(true);
            checkboxes.add(box);
            panel.add(box);
            jmbgMap.put(rsMetaData.getColumnLabel(i), i);
//            System.out.println("column MetaData ");
//            System.out.println("column number " + i);
//            // indicates the designated column's normal maximum width in
//            // characters
//            System.out.println(rsMetaData.getColumnDisplaySize(i));
//            // gets the designated column's suggested title
//            // for use in printouts and displays.
//            System.out.println(rsMetaData.getColumnLabel(i));
//
//            // get the designated column's name.
//            System.out.println(rsMetaData.getColumnName(i));
//
//            // get the designated column's SQL type.
//            System.out.println(rsMetaData.getColumnType(i));
//
//            // get the designated column's SQL type name.
//            System.out.println(rsMetaData.getColumnTypeName(i));
//
//            // get the designated column's class name.
//            System.out.println(rsMetaData.getColumnClassName(i));
//
//            // get the designated column's table name.
//            System.out.println(rsMetaData.getTableName(i));
//
//            // get the designated column's number of decimal digits.
//            System.out.println(rsMetaData.getPrecision(i));
//
//            // gets the designated column's number of
//            // digits to right of the decimal point.
//            System.out.println(rsMetaData.getScale(i));
//
//            // indicates whether the designated column is
//            // automatically numbered, thus read-only.
//            System.out.println(rsMetaData.isAutoIncrement(i));
//
//            // indicates whether the designated column is a cash value.
//            System.out.println(rsMetaData.isCurrency(i));
//
//            // indicates whether a write on the designated
//            // column will succeed.
//            System.out.println(rsMetaData.isWritable(i));
//
//            // indicates whether a write on the designated
//            // column will definitely succeed.
//            System.out.println(rsMetaData.isDefinitelyWritable(i));
//
//            // indicates the nullability of values
//            // in the designated column.
//            System.out.println(rsMetaData.isNullable(i));
//
//            // Indicates whether the designated column
//            // is definitely not writable.
//            System.out.println(rsMetaData.isReadOnly(i));
//
//            // Indicates whether a column's case matters
//            // in the designated column.
//            System.out.println(rsMetaData.isCaseSensitive(i));
//
//            // Indicates whether a column's case matters
//            // in the designated column.
//            System.out.println(rsMetaData.isSearchable(i));
//
//            // indicates whether values in the designated
//            // column are signed numbers.
//            System.out.println(rsMetaData.isSigned(i));
//
//            // Gets the designated column's table's catalog name.
//            System.out.println(rsMetaData.getCatalogName(i));
//
//            // Gets the designated column's table's schema name.
//            System.out.println(rsMetaData.getSchemaName(i));
        }
        JButton button = new JButton("Kreiranje izveštaja");
        button.addActionListener(new ButtonListener());
        panel.add(button);
        JFrame frame = new JFrame("Selektujte obeležja koja želite u izveštaju");
        panel.setLayout(new GridLayout(20, 5, 3, 3));
        frame.add(panel);
        frame.pack();
        frame.setVisible(true);

        //  sortiranje mape
        Map sortedMap = sortByValues(jmbgMap);
        // Get a set of the entries on the sorted map
        Set set = sortedMap.entrySet();

        // Get an iterator
        Iterator i = set.iterator();
        while (i.hasNext()) {
            Map.Entry me = (Map.Entry) i.next();
            System.out.print(me.getKey() + ": ");
            System.out.println(me.getValue());
            String key = (String) me.getKey(); // (č String) i.next();
            if (!itemSql.isEmpty()) {
                itemSql += ", ";
                itemSqlSaApostrofom += ", ";
            }
            itemSqlSaApostrofom += "\"" + key + "\"";
            itemSql += key;
        }
        //
//        Iterator<String> it = jmbgMap.keySet().iterator();
//
//        while (it.hasNext()) {
//            String key = (String) it.next();
//            if (!itemSql.isEmpty()) {
//                itemSql += ", ";
//                itemSqlSaApostrofom += ", ";
//            }
//            itemSqlSaApostrofom += "\"" + key + "\"";
//            itemSql += key;
////            JCheckBox cb1 = new JCheckBox("key");
//        }
        st.close();
//        conn.close();
    }

    public void PisiUExcel() {
        try {
//        this.conn = conn;
//        initComponents();
//        if (conn = null) {
//            konekcija n = new konekcija();
//            conn = n.konekcija();
//        }
//        try {
            Statement stmt = null;
            try {
                stmt = conn.createStatement();
            } catch (SQLException ex) {
                Logger.getLogger(KartonExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
            }
//                    String itemSql = "";
            String sqlQuery = " select * from licni_podaci where id like '27"
                    + "'";
            sqlQuery = " select " + itemSql + " from licni_podaci where aktivan=1 order by id ";
            System.out.println(
                    sqlQuery);
            ResultSet rs = null;
            int numberOfColumns = 0;
            XSSFWorkbook workbook = new XSSFWorkbook();
            try {
                rs = stmt.executeQuery(sqlQuery);
                ResultSetMetaData rsMetaData = rs.getMetaData();
                numberOfColumns = rsMetaData.getColumnCount();
            } catch (SQLException ex) {
                Logger.getLogger(KartonExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
            }
            int rb = 1;
//            Map< String, Object[]> empinfo = new TreeMap< String, Object[]>();
            Map< Integer, Object[]> empinfo = new TreeMap< Integer, Object[]>();
            String[] array = itemSqlSaApostrofom.split(",");
            int broj = array.length;
            Object[] o = new Object[broj];
            Object[] oo = new Object[broj];
            // punjenje zaglavlja
            for (int broj1 = 0; broj1 < broj; broj1++) {
                o[broj1] = array[broj1];
//                oo[broj1]="rs.getString("+array[broj1]+")";
            }
            empinfo.put(1, o);
//            empinfo.put(1, new Object[]{
//                (array[1].length() > 1) ? array[1] : "",
//                (array[2].length() > 1) ? array[2] : ""
////                Arrays.toString(array)
//            //                "ID", "JMBG", "OSLOVLJAVANJE", "CRKVENA TITULA", "AKADEMSKA TITULA",
//            //                "IME", "PREZIME", "IME OCA",
//            //                "IME_MAJKE", "TELEFON", "EMAIL",
//            //                "ZUPA", "BANKA", "TEKUCI RACUN"
////                itemSqlSaApostrofom // problem je sto se nalazi u stringu u apostrofima
//            });
            XSSFSheet spreadsheet = null;
            XSSFRow row;
            spreadsheet = workbook.createSheet(
                    "prvi");
            rb = 1;
            while ((rs.next())) {
                //Create a blank sheet
//                spreadsheet = workbook.createSheet(
//                        rs.getString("jmbg"));
                //Create row object
                //This data needs to be written (Object[])
                rb++;
//                oo[rb]="rs.getString("+array[rb]+")";
//                empinfo.put(rb, oo );

                empinfo.put(rb, new Object[]{
                    rs.getString(1), rs.getString(2),
                    rs.getString(3), rs.getString(4), rs.getString(5),
                    rs.getString(6), rs.getString(7), rs.getString(8),
                    rs.getString(9), rs.getString(10), rs.getString(11),
                    rs.getString(12), rs.getString(13), rs.getString(14),
                    rs.getString(15), rs.getString(16), rs.getString(17),
                    rs.getString(18), rs.getString(19), rs.getString(20),
                    rs.getString(21), rs.getString(22), rs.getString(23),
                    rs.getString(24), rs.getString(25), rs.getString(26),
                    rs.getString(27), rs.getString(28), rs.getString(29), rs.getString(30), rs.getString(31), rs.getString(32),
                    rs.getString(33), rs.getString(34), rs.getString(35), rs.getString(36), rs.getString(37), rs.getString(38),
                    rs.getString(39), rs.getString(40), rs.getString(41), rs.getString(42), rs.getString(43), rs.getString(44),
                    rs.getString(45), rs.getString(46), rs.getString(47), rs.getString(48), rs.getString(49), rs.getString(50),
                    rs.getString(51), rs.getString(52), rs.getString(53), rs.getString(54), rs.getString(55), rs.getString(56),
                    rs.getString(57), rs.getString(58), rs.getString(59), rs.getString(60), rs.getString(61), rs.getString(62),
                    rs.getString(63), rs.getString(64),
                    (numberOfColumns > 64 && numberOfColumns < 66) ? rs.getString(65) : "",
                    (numberOfColumns > 65 && numberOfColumns < 67) ? rs.getString(66) : "",
                    (numberOfColumns > 66 && numberOfColumns < 68) ? rs.getString(67) : ""

                });
//                empinfo.put(rb, new Object[]{
//                    rs.getString("id"), rs.getString("jmbg"),
//                    rs.getString("oslovljavanje"), rs.getString("crkvena_titula"), rs.getString("akademska_titula"),
//                    rs.getString("ime"), rs.getString("prezime"), rs.getString("ime_oca"),
//                    rs.getString("ime_majke"), rs.getString("telefon"), rs.getString("e_mail"),
//                    rs.getString("zupa_naziv"), rs.getString("banka"), rs.getString("tekuci_racun")
//                });

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
                        new File("SvaObelezja.xlsx"));
            } catch (FileNotFoundException ex) {
                Logger.getLogger(KartonExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                workbook.write(out);
            } catch (IOException ex) {
                Logger.getLogger(KartonExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                out.close();
            } catch (IOException ex) {
                Logger.getLogger(KartonExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
            }
//            System.out.println(
//                    "Writesheet.xlsx written successfully");
//   }           
//            while (rs.next()) {
//
//            }
//
            try {
                Desktop.getDesktop().open(new File("SvaObelezja.xlsx"));
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Message " + ex, "Title", JOptionPane.ERROR_MESSAGE);
//        }
        } catch (SQLException ex) {
            Logger.getLogger(KartonExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
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

        jPanel1 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 368, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 211, Short.MAX_VALUE)
        );

        jButton1.setText("jButton1");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(20, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jButton1)
                .addGap(31, 31, 31))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 29, Short.MAX_VALUE)
                .addComponent(jButton1)
                .addGap(22, 22, 22))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
//        try {
        // TODO add your handling code here:
//            uzmiKolone();
//        } catch (SQLException ex) {
//            Logger.getLogger(KartonExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
//        }
        PisiUExcel();
    }//GEN-LAST:event_jButton1ActionPerformed

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
            java.util.logging.Logger.getLogger(KartonExcelGenerator.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(KartonExcelGenerator.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(KartonExcelGenerator.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(KartonExcelGenerator.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
//                 new KartonExcel().setVisible(true);
                new KartonExcelGenerator();

            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables

    public static <K, V extends Comparable<V>> Map<K, V>
            sortByValues(final Map<K, V> map) {
        Comparator<K> valueComparator
                = new Comparator<K>() {
                    public int compare(K k1, K k2) {
                        int compare
                        = map.get(k1).compareTo(map.get(k2));
                        if (compare == 0) {
                            return 1;
                        } else {
                            return compare;
                        }
                    }
                };

        Map<K, V> sortedByValues
                = new TreeMap<K, V>(valueComparator);
        sortedByValues.putAll(map);
        return sortedByValues;
    }
//    private Map sortByValues(TreeMap<String, String> jmbgMap) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }

    class ButtonListener implements ActionListener {

//        ButtonListener() {
////             PisiUExcel();
//        }

//  public void actionPerformed(ActionEvent e) {
//    if (e.getActionCommand().equals("Button1")) {
//      System.out.println("Button1 has been clicked");
//    }
//  }
        @Override
        public void actionPerformed(ActionEvent e) {
            if (e.getActionCommand().equals("Kreiranje izveštaja")) {
                System.out.println("Button1 has been clicked");
                PisiUExcel();
            }
        }
    }
}
