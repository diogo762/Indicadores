package net.javaguides.usermanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * User.java
 * This is a model class represents a User entity
 * @author Ramesh Fadatare
 *
 */

@Entity
@Table(name="indicador")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	protected int id;
	
	@Column(name="entregavel")
	protected String entregavel;
	
	@Column(name="erro")
	protected String erro;
	
	@Column(name="descricao")
	protected String descricao;
	
	@Column(name="status")
	protected String status;
	
	public User() {
	}
	
	public User(String entregavel, String erro, String descricao, String status) {
		super();
		this.entregavel = entregavel;
		this.erro = erro;
		this.descricao = descricao;
		this.status = status;
	}

	public User(int id, String entregavel, String erro, String descricao, String status) {
		super();
		this.id = id;
		this.entregavel = entregavel;
		this.erro = erro;
		this.descricao = descricao;
		this.status = status;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEntregavel() {
		return entregavel;
	}
	public void setEntregavel(String entregavel) {
		this.entregavel = entregavel;
	}
	public String getErro() {
		return erro;
	}
	public void setErro(String erro) {
		this.erro = erro;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
