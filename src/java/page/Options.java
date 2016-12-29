/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package page;

/**
 *
 * @author E016233
 */
public final class Options {
    
    private String [] name;
    private String [] value;
    private String [] formid;
    
    public Options () {     
        clear();
    }
    public String getOptionName(short i) {
        return name[i];
    }
    public String getOptionValue(short i) {
        return value[i];
    }
    public String getOptionForm(short i) {
        return formid[i];
    }
    public void setOptionName() {
        
    }
    public void setOptionValue() {
        
    }

    public void clear() {
        name = new String [18];
        value = new String [18];
        formid = new String [18];
        for (int i=0;i<18;i++) {
            name[i] = "";
            value[i] = "";
            formid[i] = "selected";
        }
    }
}
