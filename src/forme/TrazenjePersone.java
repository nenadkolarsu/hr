/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package forme;

/**
 *
 * @author ms
 */
import Writesheet.KartonExcel1;
import Writesheet.KartonExcelSvi;
import java.awt.Font;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumnModel;
import javax.swing.table.TableModel;
import konekcija.konekcija;
import model.User;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.view.JasperViewer;
import org.asoft.library.AsoftComboBox;

public class TrazenjePersone extends javax.swing.JFrame {

    private Connection conn;
    String mIzabraniId = null;

    /**
     * Creates new form Search
     */
    final void FillList() {

        try {
            Statement stmt = conn.createStatement();

            String sqlQuery = " select * from licni_podaci ";
            ResultSet rs = stmt.executeQuery(sqlQuery);
            DefaultListModel DLM = new DefaultListModel();

            while (rs.next()) {
                DLM.addElement(rs.getString(1)
                        + AsoftComboBox.COMBOBOX_ITEM_SEPARATOR + rs.getString(2)
                        + AsoftComboBox.COMBOBOX_ITEM_SEPARATOR + rs.getString(3)
                        + AsoftComboBox.COMBOBOX_ITEM_SEPARATOR + rs.getString(4)
                );
            }

            List1.setModel(DLM);

        } catch (SQLException ex) {
            Logger.getLogger(TrazenjePersone.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public TrazenjePersone() {

        initComponents();
        jTable_Users.setFont(new Font("Verdana", Font.PLAIN, 14));
        setLocationRelativeTo(null);
//        mDatumRodj.initPicker("datdokMmiDorade", null);
        konekcija n = new konekcija();
        conn = n.konekcija();
        searchText.grabFocus();
//        List<String> list = puniComboPtt.puni_ptt(conn);
//        mMestoRodj.setModel(new DefaultComboBoxModel(list.toArray()));
//        List<String> listDrzavljanstvo = puniComboDrzavljanstvo.puni_ptt(conn);
//        mDrzavljanstvo.setModel(new DefaultComboBoxModel(listDrzavljanstvo.toArray()));
//        List<String> listNacionalnost = puniComboNacionalnost.puni_ptt(conn);
//        mNacionalnost.setModel(new DefaultComboBoxModel(listNacionalnost.toArray()));
        FillList();

        findUsers();

    }
    // function to return users arraylist with particular data public ArrayList<User> ListUsers(String ValToSearch) { ArrayList<User> usersList = new ArrayList<User>(); Statement st; ResultSet rs; try{ Connection con = getConnection(); st = con.createStatement(); String searchQuery = "SELECT * FROM `users` WHERE CONCAT(`id`, `fname`, `lname`, `age`) LIKE '%"+ValToSearch+"%'"; rs = st.executeQuery(searchQuery); User user; while(rs.next()) { user = new User( rs.getInt("id"), rs.getString("fname"), rs.getString("lname"), rs.getInt("age") ); usersList.add(user); } }catch(Exception ex){ System.out.println(ex.getMessage()); } return usersList; }
// Read more at http://1bestcsharp.blogspot.com/2015/11/java-jtable-mysql-data-search-filter.html#ybOsIrHe6u84gEmv.99
// function to return users arraylist with particular data 

    public ArrayList<User> ListUsers(String ValToSearch) {
        ArrayList<User> usersList = new ArrayList<User>();
        Statement st;
        ResultSet rs;
        try {
            // Connection con = getConnection();
            st = conn.createStatement();
            String searchQuery = "SELECT * FROM `licni_podaci` WHERE  "
                    + "CONCAT(`id`, `jmbg`, `ime`, `prezime`) LIKE '%" + ValToSearch + "%'";
            rs = st.executeQuery(searchQuery);
            User user;
            while (rs.next()) {
                user = new User(rs.getInt("id"), rs.getString("ime"), rs.getString("prezime"), rs.getString("jmbg"), rs.getInt("aktivan"));
                usersList.add(user);
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return usersList;
    }

    public void findUsers() {
        ArrayList<User> users = ListUsers(searchText.getText());
        DefaultTableModel model = new DefaultTableModel();

        //
        // DefaultTableModel model = (DefaultTableModel) jTable_Users.getModel();
        TableColumnModel tcm = jTable_Users.getColumnModel();

        tcm.getColumn(0).setPreferredWidth(20);     //Name
        tcm.getColumn(1).setPreferredWidth(120);    //Title
        tcm.getColumn(2).setPreferredWidth(150);    //Surname
        tcm.getColumn(3).setPreferredWidth(150);    //ID
        tcm.getColumn(4).setPreferredWidth(150);    //aktivan
        //

        model.setColumnIdentifiers(new Object[]{"Id", "Jmbg", "Ime", "Prezime", "Aktivan"});
        Object[] row = new Object[5];
        for (int i = 0; i < users.size(); i++) {
            row[0] = users.get(i).getId();
            row[1] = users.get(i).getJmbg();
            row[2] = users.get(i).getIme();
            row[3] = users.get(i).getPrezime();
            row[4] = users.get(i).getAktivan();
            model.addRow(row);
        }
        jTable_Users.setModel(model);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        List1 = new javax.swing.JList();
        jPanel2 = new javax.swing.JPanel();
        searchText = new javax.swing.JTextField();
        searchBtn = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable_Users = new javax.swing.JTable();
        jPanel4 = new javax.swing.JPanel();
        UpdateBtn = new javax.swing.JButton();
        DeleteBtn = new javax.swing.JButton();
        IzlazBtn = new javax.swing.JButton();
        AddBtn = new javax.swing.JButton();
        PregledBtn = new javax.swing.JButton();
        PregledExcelBtn = new javax.swing.JButton();

        List1.addListSelectionListener(new javax.swing.event.ListSelectionListener() {
            public void valueChanged(javax.swing.event.ListSelectionEvent evt) {
                List1ValueChanged(evt);
            }
        });
        jScrollPane1.setViewportView(List1);

        searchText.addCaretListener(new javax.swing.event.CaretListener() {
            public void caretUpdate(javax.swing.event.CaretEvent evt) {
                searchTextCaretUpdate(evt);
            }
        });

        searchBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/pictures/filefind.png"))); // NOI18N
        searchBtn.setText("Traženje");
        searchBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                searchBtnActionPerformed(evt);
            }
        });

        jTable_Users.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4", "Title 5"
            }
        ));
        jTable_Users.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable_UsersMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(jTable_Users);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(41, 41, 41)
                .addComponent(searchText, javax.swing.GroupLayout.PREFERRED_SIZE, 240, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(searchBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane2))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(searchText, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(searchBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 444, Short.MAX_VALUE))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        UpdateBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/pictures/edit.png"))); // NOI18N
        UpdateBtn.setText("Izmena");
        UpdateBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                UpdateBtnActionPerformed(evt);
            }
        });

        DeleteBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/pictures/delete_1.png"))); // NOI18N
        DeleteBtn.setText("Brisanje");
        DeleteBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                DeleteBtnActionPerformed(evt);
            }
        });

        IzlazBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/pictures/exit.png"))); // NOI18N
        IzlazBtn.setText("Izlaz");
        IzlazBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                IzlazBtnActionPerformed(evt);
            }
        });

        AddBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/pictures/new.png"))); // NOI18N
        AddBtn.setText("Unos");
        AddBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                AddBtnActionPerformed(evt);
            }
        });

        PregledBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/pictures/fileprint.png"))); // NOI18N
        PregledBtn.setText("Karton svećenika");
        PregledBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                PregledBtnActionPerformed(evt);
            }
        });

        PregledExcelBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/pictures/fileprint.png"))); // NOI18N
        PregledExcelBtn.setText("Excel");
        PregledExcelBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                PregledExcelBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(AddBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 96, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(16, 16, 16)
                .addComponent(UpdateBtn)
                .addGap(16, 16, 16)
                .addComponent(DeleteBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(16, 16, 16)
                .addComponent(PregledBtn)
                .addGap(36, 36, 36)
                .addComponent(PregledExcelBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(IzlazBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(160, 160, 160))
        );

        jPanel4Layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {DeleteBtn, UpdateBtn});

        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(UpdateBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(DeleteBtn)
                    .addComponent(IzlazBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(AddBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(PregledBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(PregledExcelBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 13, Short.MAX_VALUE))
        );

        jPanel4Layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {DeleteBtn, UpdateBtn});

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 9, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 19, Short.MAX_VALUE)
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(29, 29, 29))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void List1ValueChanged(javax.swing.event.ListSelectionEvent evt) {//GEN-FIRST:event_List1ValueChanged
//        try {
//            Statement stmt = conn.createStatement();
//            // String[] array = yourString.split(wordSeparator);
//            String aa = (String) List1.getSelectedValue();
//            String[] niz = aa.split(AsoftComboBox.COMBOBOX_ITEM_SEPARATOR);
//
////            String sqlQuery = " select * from licni_podaci where id like '" + niz[0]
////                    + "' and jmbg like '" + niz[1]
////                    + "' and ime like '" + niz[2] + "'";
//            String sqlQuery = " select * from licni_podaci where id like '" + niz[0]
//                    + "'";
//
//            ResultSet rs = stmt.executeQuery(sqlQuery);

//            while (rs.next()) {
//                mId.setText(rs.getString(1));
//                mJmbg.setText(rs.getString(2));
//                mIme.setText(rs.getString(3));
//                mPrezime.setText(rs.getString(4));
//                mImeOca.setText(rs.getString(5));
//                mImeMajke.setText(rs.getString(6));
//                Date a = rs.getDate(9);
//                mDatumRodj.setDate(a);
//                try {
//                    mDatumRodj.setDate(rs.getDate(9));
//                } catch (ParseException ex) {
//                    Logger.getLogger(TrazenjePersone.class.getName()).log(Level.SEVERE, null, ex);
//                }
//                String ddd = rs.getString("mestorodj");
//                mMestoRodj.setSelectedItem(rs.getString("mestorodj"));
//
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(TrazenjePersone.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (ParseException ex) {
//            Logger.getLogger(TrazenjePersone.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }//GEN-LAST:event_List1ValueChanged

    private void UpdateBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_UpdateBtnActionPerformed

        addPersonalTab aP = new addPersonalTab(conn, "IZMENA", mIzabraniId);
        aP.setVisible(true);//
//        Statement stmt = null;
//        try {
//            stmt = conn.createStatement();
//
//            String sqlQuery = null;
//
//            try {
//                sqlQuery = " UPDATE licni_podaci SET ime='"
//                        + mIme.getText()
//                        // + asoftFormattedTextField1.getText()
//                        + "', prezime='" + mPrezime.getText()
//                        + "', jmbg='" + mJmbg.getText()
//                        + "', ime_oca='" + mImeOca.getText()
//                        + "', ime_majke='" + mImeMajke.getText()
//                        + "', datumrodj='" + mDatumRodj.getSQLDate()
//                        + "', mestorodj='" + mMestoRodj.getSelectedItem()
//                        + "' WHERE id = '" + mId.getText()
//                        + "'";
//            } catch (ParseException ex) {
//                Logger.getLogger(TrazenjePersone.class.getName()).log(Level.SEVERE, null, ex);
//            }
//            System.out.println(sqlQuery);
//            stmt.execute(sqlQuery);
//            FillList();
//
//        } catch (SQLException ex) {
//            Logger.getLogger(TrazenjePersone.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }//GEN-LAST:event_UpdateBtnActionPerformed

    private void DeleteBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_DeleteBtnActionPerformed
        
        int index = jTable_Users.getSelectedRow();
        TableModel model = jTable_Users.getModel();

        mIzabraniId = model.getValueAt(index, 0).toString();
        String mId = model.getValueAt(index, 0).toString();
        Statement stmt = null;
        try {
            stmt = conn.createStatement();

            String sqlQuery = null;

            sqlQuery = " UPDATE licni_podaci set aktivan=false "
                    + " WHERE id = '" + mId
                    + "'";
            System.out.println(sqlQuery);
            // display the showOptionDialog
            int choice = JOptionPane.showOptionDialog(this,
                    "Da li ste sigurni u brisanje?",
                    "Brisanje?",
                    JOptionPane.YES_NO_OPTION,
                    JOptionPane.QUESTION_MESSAGE,
                    null, null, null);

            // interpret the user's choice
            if (choice == JOptionPane.YES_OPTION) {
                stmt.execute(sqlQuery);
                FillList();
            }

        } catch (SQLException ex) {
            Logger.getLogger(TrazenjePersone.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_DeleteBtnActionPerformed

    private void searchBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_searchBtnActionPerformed

//        int result = List1.getNextMatch(searchText.getText(), 0, Position.Bias.Forward);
//        List1.setSelectedIndex(result);
        findUsers();
        //   http://stackoverflow.com/questions/12496038/searching-in-a-arraylist-with-custom-objects-for-certain-strings
    }//GEN-LAST:event_searchBtnActionPerformed

    private void jTable_UsersMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable_UsersMouseClicked

        int index = jTable_Users.getSelectedRow();
        TableModel model = jTable_Users.getModel();

        mIzabraniId = model.getValueAt(index, 0).toString();
        String id = model.getValueAt(index, 0).toString();
        String firstName = model.getValueAt(index, 1).toString();
        String lastName = model.getValueAt(index, 2).toString();
        String age = model.getValueAt(index, 3).toString();

//        jtRowData.setVisible(true);
//        jtRowData.pack();
//        jtRowData.setLocationRelativeTo(null);
//        jtRowData.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
//
//        jtRowData.jTextField_Id.setText(id);
//        jtRowData.jTextField_FirstName.setText(firstName);
//        jtRowData.jTextField_LastName.setText(lastName);
//        jtRowData.jTextField_Age.setText(age);
        try {
            Statement stmt = conn.createStatement();
            // String[] array = yourString.split(wordSeparator);
//            String aa = (String) List1.getSelectedValue();
//            String[] niz = aa.split(AsoftComboBox.COMBOBOX_ITEM_SEPARATOR);

//            String sqlQuery = " select * from licni_podaci where id like '" + niz[0]
//                    + "' and jmbg like '" + niz[1]
//                    + "' and ime like '" + niz[2] + "'";
            String sqlQuery = " select * from licni_podaci where id like '" + id
                    + "'";

            ResultSet rs = stmt.executeQuery(sqlQuery);

//            while (rs.next()) {
//                mId.setText(rs.getString(1));
//                mJmbg.setText(rs.getString(2));
//                mIme.setText(rs.getString(3));
//                mPrezime.setText(rs.getString(4));
//                mImeOca.setText(rs.getString(5));
//                mImeMajke.setText(rs.getString(6));
//                Date a = rs.getDate(9);
//                mDatumRodj.setDate(a);
//                try {
//                    mDatumRodj.setDate(rs.getDate(9));
//                } catch (ParseException ex) {
//                    Logger.getLogger(TrazenjePersone.class.getName()).log(Level.SEVERE, null, ex);
//                }
//                String ddd = rs.getString("mestorodj");
//                mMestoRodj.setSelectedItem(rs.getString("mestorodj"));
//                mDrzavljanstvo.setSelectedItem(rs.getString("drzavljanstvo"));
//                mNacionalnost.setSelectedItem(rs.getString("nacionalnost"));
//                mTelefon.setText(rs.getString("telefon"));
//                mEmail.setText(rs.getString("e_mail"));
//
//            }
        } catch (SQLException ex) {
            Logger.getLogger(TrazenjePersone.class.getName()).log(Level.SEVERE, null, ex);
        }

// Read more at http://1bestcsharp.blogspot.com/2016/01/java-display-jtable-row-data-jtextfields.html#ZkGiDSd8vE40YBKb.99
// Read more at http://1bestcsharp.blogspot.com/2016/01/java-display-jtable-row-data-jtextfields.html#ZkGiDSd8vE40YBKb.99
    }//GEN-LAST:event_jTable_UsersMouseClicked

    private void IzlazBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_IzlazBtnActionPerformed
        // TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_IzlazBtnActionPerformed

    private void searchTextCaretUpdate(javax.swing.event.CaretEvent evt) {//GEN-FIRST:event_searchTextCaretUpdate
        // TODO add your handling code here:
        findUsers();
    }//GEN-LAST:event_searchTextCaretUpdate

    private void AddBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_AddBtnActionPerformed
        // TODO add your handling code here:
        addPersonalTab aP = new addPersonalTab(conn, "UNOS", "");
        aP.setVisible(true);
    }//GEN-LAST:event_AddBtnActionPerformed

    private void PregledBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_PregledBtnActionPerformed
        // TODO add your handling code here:
        Thread t1 = new Thread(new Runnable() {
            public void run() {
                try {
                    Map parameters = new HashMap();
                    parameters.put("id", mIzabraniId);
                     String reportPath = service.uzmiParametar.uzmiParametar(conn, "putanja_izvestaja").concat("karton1004.jrxml"); 
//                    String reportPath = "C:\\Users\\ms\\Documents\\NetBeansProjects\\gui\\src\\report\\karton1004.jrxml";
                    JasperReport jr = JasperCompileManager.compileReport(reportPath);
                    JasperPrint jp = JasperFillManager.fillReport(jr, parameters, conn);
                    JasperViewer.viewReport(jp, false);
                } catch (JRException ex) {
                    Logger.getLogger(Personal.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
        t1.start();
    }//GEN-LAST:event_PregledBtnActionPerformed

    private void PregledExcelBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_PregledExcelBtnActionPerformed
        // TODO add your handling code here:
                Thread t1 = new Thread(new Runnable() {
            public void run() {
//                try {
//         KartonExcel1 ke1 = new KartonExcel1( mIzabraniId);
         KartonExcelSvi ke1 = new KartonExcelSvi( mIzabraniId);
            }
        });
        t1.start();
    }//GEN-LAST:event_PregledExcelBtnActionPerformed

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
            java.util.logging.Logger.getLogger(TrazenjePersone.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(TrazenjePersone.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(TrazenjePersone.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(TrazenjePersone.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new TrazenjePersone().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton AddBtn;
    private javax.swing.JButton DeleteBtn;
    private javax.swing.JButton IzlazBtn;
    private javax.swing.JList List1;
    private javax.swing.JButton PregledBtn;
    private javax.swing.JButton PregledExcelBtn;
    private javax.swing.JButton UpdateBtn;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable_Users;
    private javax.swing.JButton searchBtn;
    private javax.swing.JTextField searchText;
    // End of variables declaration//GEN-END:variables
}
