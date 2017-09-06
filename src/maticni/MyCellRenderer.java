/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package maticni;

import java.awt.Color;
import javax.swing.table.TableCellRenderer;

/**
 *
 * @author ms
 */
public class MyCellRenderer extends javax.swing.table.DefaultTableCellRenderer {

        @Override
        public java.awt.Component getTableCellRendererComponent(javax.swing.JTable table, java.lang.Object value, boolean isSelected, boolean hasFocus, int row, int column) {
            final java.awt.Component cellComponent = super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);

            Object val = table.getValueAt(row, 2);
            String sval = val.toString();
            sval = sval.replaceAll(":", "");
            int ival = Integer.parseInt(sval);
            if (ival == 0) {
                cellComponent.setForeground(Color.black);
                cellComponent.setBackground(Color.red);

            } else {
                cellComponent.setBackground(Color.white);
                cellComponent.setForeground(Color.black);
            }
            if (isSelected) {
                cellComponent.setForeground(table.getSelectionForeground());
                cellComponent.setBackground(table.getSelectionBackground());
            }

            return cellComponent;

        }

    }
