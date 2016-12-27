/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core;

/**
 *
 * @author E016233
 */
public class Clothing implements Apparel {

    private short material;
    
    @Override
    public void setAc(short ac) {
    }

    @Override
    public short getAc() {
        return 0;
    }

    @Override
    public void setMaterial(short material) {
        this.material = material;
    }

    @Override
    public short getMaterial() {
        return material;
    }
    
}
