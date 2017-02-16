/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebPage;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Máté
 */
@Entity
@Table(name = "webpagetable")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Webpagetable.findAll", query = "SELECT w FROM Webpagetable w")
    , @NamedQuery(name = "Webpagetable.findById", query = "SELECT w FROM Webpagetable w WHERE w.id = :id")
    , @NamedQuery(name = "Webpagetable.findByUsername", query = "SELECT w FROM Webpagetable w WHERE w.username = :username")
    , @NamedQuery(name = "Webpagetable.findByPassword", query = "SELECT w FROM Webpagetable w WHERE w.password = :password")
    , @NamedQuery(name = "Webpagetable.findByEMail", query = "SELECT w FROM Webpagetable w WHERE w.eMail = :eMail")
    , @NamedQuery(name = "Webpagetable.findByFirstName", query = "SELECT w FROM Webpagetable w WHERE w.firstName = :firstName")
    , @NamedQuery(name = "Webpagetable.findByLastName", query = "SELECT w FROM Webpagetable w WHERE w.lastName = :lastName")})
public class Webpagetable implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "username")
    private String username;
    @Basic(optional = false)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @Column(name = "e-mail")
    private String eMail;
    @Basic(optional = false)
    @Column(name = "FirstName")
    private String firstName;
    @Basic(optional = false)
    @Column(name = "LastName")
    private String lastName;
    @Basic(optional = false)
    @Lob
    @Column(name = "pic")
    private byte[] pic;

    public Webpagetable() {
    }

    public Webpagetable(Integer id) {
        this.id = id;
    }

    public Webpagetable(Integer id, String username, String password, String eMail, String firstName, String lastName, byte[] pic) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.eMail = eMail;
        this.firstName = firstName;
        this.lastName = lastName;
        this.pic = pic;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEMail() {
        return eMail;
    }

    public void setEMail(String eMail) {
        this.eMail = eMail;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public byte[] getPic() {
        return pic;
    }

    public void setPic(byte[] pic) {
        this.pic = pic;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Webpagetable)) {
            return false;
        }
        Webpagetable other = (Webpagetable) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "WebPage.Webpagetable[ id=" + id + " ]";
    }
    
}
