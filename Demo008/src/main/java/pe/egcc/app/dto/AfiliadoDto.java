package pe.egcc.app.dto;

import java.util.Date;

import javax.xml.crypto.Data;

public class AfiliadoDto {
	private int afi_id;
	private String afi_nombres    ;
	private String afi_apepaterno ;
	private String afi_apematerno ;
	private String afi_estado     ;
	private Date afi_fecnac     ;
	private String afi_edad       ;
	private String afi_sexo       ;
	private String afi_telefono   ;
	private String afi_dni        ;
	
	public AfiliadoDto() {
		// TODO Auto-generated constructor stub
	}

	public AfiliadoDto(int afi_id, String afi_nombres, String afi_apepaterno, String afi_apematerno, String afi_estado,
			Date afi_fecnac, String afi_edad, String afi_sexo, String afi_telefono, String afi_dni) {
		super();
		this.afi_id = afi_id;
		this.afi_nombres = afi_nombres;
		this.afi_apepaterno = afi_apepaterno;
		this.afi_apematerno = afi_apematerno;
		this.afi_estado = afi_estado;
		this.afi_fecnac = afi_fecnac;
		this.afi_edad = afi_edad;
		this.afi_sexo = afi_sexo;
		this.afi_telefono = afi_telefono;
		this.afi_dni = afi_dni;
	}

	public int getAfi_id() {
		return afi_id;
	}

	public void setAfi_id(int afi_id) {
		this.afi_id = afi_id;
	}

	public String getAfi_nombres() {
		return afi_nombres;
	}

	public void setAfi_nombres(String afi_nombres) {
		this.afi_nombres = afi_nombres;
	}

	public String getAfi_apepaterno() {
		return afi_apepaterno;
	}

	public void setAfi_apepaterno(String afi_apepaterno) {
		this.afi_apepaterno = afi_apepaterno;
	}

	public String getAfi_apematerno() {
		return afi_apematerno;
	}

	public void setAfi_apematerno(String afi_apematerno) {
		this.afi_apematerno = afi_apematerno;
	}

	public String getAfi_estado() {
		return afi_estado;
	}

	public void setAfi_estado(String afi_estado) {
		this.afi_estado = afi_estado;
	}

	public Date getAfi_fecnac() {
		return afi_fecnac;
	}

	public void setAfi_fecnac(Date afi_fecnac) {
		this.afi_fecnac = afi_fecnac;
	}

	public String getAfi_edad() {
		return afi_edad;
	}

	public void setAfi_edad(String afi_edad) {
		this.afi_edad = afi_edad;
	}

	public String getAfi_sexo() {
		return afi_sexo;
	}

	public void setAfi_sexo(String afi_sexo) {
		this.afi_sexo = afi_sexo;
	}

	public String getAfi_telefono() {
		return afi_telefono;
	}

	public void setAfi_telefono(String afi_telefono) {
		this.afi_telefono = afi_telefono;
	}

	public String getAfi_dni() {
		return afi_dni;
	}

	public void setAfi_dni(String afi_dni) {
		this.afi_dni = afi_dni;
	}
	
}
