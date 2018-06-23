<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="Master.jsp" /> 
 
 <script type="text/javascript" src="../app/resources/bootstrap/js/jquery2.min.js"></script>
 <script type="text/javascript" src="../app/resources/bootstrap/js/bootstrap.min.js"></script>
 <script type="text/javascript" src="../app/resources/bootstrap/js/bootstrap-select.js"></script>
 <script type="text/javascript" src="../app/resources/bootstrap/js/bootstrap-select.js"></script>
 <script type="text/javascript" src="../app/resources/bootstrap/js/bootstrap-select.min.js"></script>
 <link rel="stylesheet" href="resources/bootstrap/css/bootstrap-select.css">
  <link rel="stylesheet" href="resources/bootstrap/css/bootstrap-select.css.map">
   <link rel="stylesheet" href="resources/bootstrap/css/bootstrap-select.min.css">
   <script type="text/javascript" src="../app/resources/funciones.js"></script>
<title>Atenciones</title>
</head>
<body>
<div class="container"> 
    <form class="form-horizontal" role="form">
    <div class="form-group">      
        <div class="col-sm-2">
          <input type="text" class="form-control formcls" name="dni" placeholder="DNI">
        </div>
        <div class="col-sm-1">
          <button type="button" id="buscar_afi" class="btn btn-primary btn-warning" value="buscar_afi">Buscar</button>
        </div>
       <div class="col-sm-offset-5 col-sm-3">   
		<button id="atencion" class="btn btn-lg btn-block btn-warning">Guardar Atención</button>
		</div>
      </div>
     
     <script>
     $("#buscar_afi").click(function(){
    		
    		var data = $("#form1").serialize();
    		$("#tablaDatos").empty();
    		
    		$.get("traerAfiliado", data, function(response){	
    			var arreglo = $.parseJSON(response);
    			if(arreglo.length == 0){
    				return false;			
    			}
    			
    			var datos = "";
    			 
    			
    			
    			 
    		});	 
    	});
     </script>
     
      <div class="form-group">
        <div class="col-sm-3">
          <label for="nombres" class="col-sm-1-new control-label">Nombres:</label>
          <input type="text" disabled="disabled"  class="form-control formcls" id="nombres" placeholder="--">
        </div>
         <div class="col-sm-3">
          <label for="apellidos" class=".col-sm-4-new control-label">Ape. Paterno:</label>
          <input type="text" disabled="disabled"  class="form-control formcls" id="apaterno" placeholder="--">
        </div>
         <div class="col-sm-3">
          <label for="apellidos" class=".col-sm-4-new control-label">Ape. Materno:</label>
          <input type="text" disabled="disabled"  class="form-control formcls" id="amaterno" placeholder="--">
        </div>
        
        <div class="col-sm-2">
          <label for="estado"  class=".col-sm-4-new control-label">Estado:</label>
         <select class="form-control formcls" id="estado" disabled="disabled" >
          <option value=0>Activo</option>
          <option value=1>Inactivo</option>
        </select>   
        </div>
      </div>
      
        <div class="form-group">
        <div class="col-sm-2">
          <label for="sexo" class="col-sm-1-new control-label">Sexo:</label>
          <select class="form-control formcls" id="sexo" disabled="disabled" >
          <option>Hombre</option>
          <option>Mujer</option>
        </select>   
        </div>
         
         <div class="col-sm-offset-1 col-sm-2">
          <label for="edad" class=".col-sm-4-new control-label">Edad:</label>
          <input type="text" disabled="disabled"  class="form-control formcls" id="edad" placeholder="">
        </div> 
          <div class="col-sm-offset-1 col-sm-2">
          <label for="fecha"   class=".col-sm-4-new control-label">Fecha Nacimiento:</label>
          <input type="text" disabled="disabled" class="form-control formcls" id="fechaNac" placeholder="">
        </div>
         <div class="col-sm-2 col-sm-offset-1">
          <label for="telefono"   class=".col-sm-4-new control-label">Telefono:</label>
          <input type="text" disabled="disabled" class="form-control formcls" id="telefono" placeholder="">
        </div>
      </div>
       
       <div class="form-group">
        <div class="col-sm-5">
          <label for="diagnostico" class="col-sm-5-new control-label">DIAGNÓSTICOS</label> <br>           
          <select class="selectpicker" multiple data-actions-box="true" style="width: 600px;">
			  <option  value="K020">K020-CARIES DEL ESMALTE</option>
			  <option  value="K021">K021-CARIES DENTINA</option>
			  <option  value="K040">K040-PULPITIS</option>
			  <option  value="K041">K041-NECROSIS PULPAR</option>
			  <option  value="K050">K050-GINGIVITIS AGUDA</option>
			  <option value="Z012">Z012-SANO</option>
		  </select>   
		  
		  
        </div>
         <div class="col-sm-5 col-sm-offset-1">
          <label for="PROCEDIMIENTOS" class="col-sm-5-new control-label">PROCEDIMIENTOS</label> <br>           
          <select id="procedimientos" class="selectpicker" multiple data-actions-box="true" style="width: 600px;">
			  
		  </select>   
		  
		  
        </div>
       </div>
       
        <div class="form-group">
        <div class="col-sm-12" style="margin: 0 auto; text-align: left;">
        <label for="" class="col-sm-5-new control-label">ODONTOGRAMA</label> <br>   
        <table border=2 style="text-align: center">
        	<tr>
        		<td>18</td><td>17</td><td>16</td><td>15</td><td>14</td><td>13</td><td>12</td><td  style="border-right-color: red;">11</td>        		
        		<td>21</td>
        		<td>22</td><td>23</td><td>24</td><td>25</td><td>26</td><td>27</td><td>28</td>
        	</tr>        
        	<tr>
        		<td>
        		<div class="capa" " >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M18" width="50" height="40" alt="Odonto"
					usemap="#M18"> 
					<map name="M18">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M18');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M18');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M18');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M18');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M18');" title="P4"/> 					
					</map>	
				</div>	
        		</td>
        		<td>
        		<div class="capa"  >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M17" width="50" height="40" alt="Odonto"
					usemap="#M17"> 
					<map name="M17">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M17');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M17');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M17');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M17');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M17');" title="P4"/> 					
					</map>	
				</div>			
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M16" width="50" height="40" alt="Odonto"
					usemap="#M16"> 
					<map name="M16">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M16');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M16');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M16');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M16');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M16');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa"  >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M15" width="50" height="40" alt="Odonto"
					usemap="#M15"> 
					<map name="M15">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M15');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M15');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M15');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M15');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M15');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa"  >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M14" width="50" height="40" alt="Odonto"
					usemap="#M14"> 
					<map name="M14">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M14');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M14');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M14');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M14');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M14');" title="P4"/> 					
					</map>	
				</div>			
        		</td>
        		<td>
        		<div class="capa"  >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M13" width="50" height="40" alt="Odonto"
					usemap="#M13"> 
					<map name="M13">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M13');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M13');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M13');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M13');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M13');" title="P4"/> 					
					</map>	
				</div>
        		</td>
        		<td>
        		<div class="capa"  >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M12" width="50" height="40" alt="Odonto"
					usemap="#M12"> 
					<map name="M12">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M12');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M12');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M12');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M12');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M12');" title="P4"/> 					
					</map>	
				</div>			
        		</td>
        		<td  style="border-right-color: red;"><div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M11" width="50" height="40" alt="Odonto"
					usemap="#M11">
					
					<map name="M11">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M11');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M11');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M11');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M11');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M11');" title="P4"/> 
					</map>
				</div>
				</td>
        		<td>
				<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M21" width="50" height="40" alt="Odonto"
					usemap="#M21">
					
					<map name="M21">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M21');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M21');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M21');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M21');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M21');" title="P4"/> 
					</map>
				</div>
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M22" width="50" height="40" alt="Odonto"
					usemap="#M22"> 
					<map name="M22">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M22');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M22');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M22');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M22');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M22');" title="P4"/> 					
					</map>	
				</div>			
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M23" width="50" height="40" alt="Odonto"
					usemap="#M23"> 
					<map name="M23">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M23');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M23');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M23');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M23');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M23');" title="P4"/> 					
					</map>	
				</div>			
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M24" width="50" height="40" alt="Odonto"
					usemap="#M24"> 
					<map name="M24">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M24');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M24');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M24');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M24');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M24');" title="P4"/> 					
					</map>	
				</div>			
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M25" width="50" height="40" alt="Odonto"
					usemap="#M25"> 
					<map name="M25">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M25');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M25');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M25');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M25');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M25');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M26" width="50" height="40" alt="Odonto"
					usemap="#M26"> 
					<map name="M26">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M26');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M26');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M26');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M26');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M26');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M27" width="50" height="40" alt="Odonto"
					usemap="#M27"> 
					<map name="M27">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M27');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M27');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M27');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M27');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M27');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M28" width="50" height="40" alt="Odonto"
					usemap="#M28"> 
					<map name="M28">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M28');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M28');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M28');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M28');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M28');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        	</tr> 
        	<tr >
        		<td >
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M48" width="50" height="40" alt="Odonto"
					usemap="#M48"> 
					<map name="M48">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M48');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M48');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M48');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M48');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M48');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M47" width="50" height="40" alt="Odonto"
					usemap="#M47"> 
					<map name="M47">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M47');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M47');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M47');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M47');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M47');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M46" width="50" height="40" alt="Odonto"
					usemap="#M46"> 
					<map name="M46">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M46');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M46');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M46');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M46');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M46');" title="P4"/> 					
					</map>	
				</div>	
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M45" width="50" height="40" alt="Odonto"
					usemap="#M45"> 
					<map name="M45">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M45');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M45');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M45');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M45');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M45');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M44" width="50" height="40" alt="Odonto"
					usemap="#M44"> 
					<map name="M44">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M44');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M44');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M44');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M44');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M44');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M43" width="50" height="40" alt="Odonto"
					usemap="#M43"> 
					<map name="M43">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M43');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M43');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M43');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M43');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M43');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M42" width="50" height="40" alt="Odonto"
					usemap="#M42"> 
					<map name="M42">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M42');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M42');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M42');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M42');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M42');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td  style="border-right-color: red;">
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M41" width="50" height="40" alt="Odonto"
					usemap="#M41"> 
					<map name="M41">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M41');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M41');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M41');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M41');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M41');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M31" width="50" height="40" alt="Odonto"
					usemap="#M31"> 
					<map name="M31">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M31');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M31');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M31');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M31');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M31');" title="P4"/> 					
					</map>	
				</div>			
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M32" width="50" height="40" alt="Odonto"
					usemap="#M32"> 
					<map name="M32">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M32');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M32');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M32');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M32');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M32');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M33" width="50" height="40" alt="Odonto"
					usemap="#M33"> 
					<map name="M33">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M33');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M33');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M33');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M33');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M33');" title="P4"/> 					
					</map>	
				</div>	
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M34" width="50" height="40" alt="Odonto"
					usemap="#M34"> 
					<map name="M34">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M34');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M34');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M34');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M34');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M34');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M35" width="50" height="40" alt="Odonto"
					usemap="#M35"> 
					<map name="M35">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M35');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M35');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M35');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M35');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M35');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M36" width="50" height="40" alt="Odonto"
					usemap="#M36"> 
					<map name="M36">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M36');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M36');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M36');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M36');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M36');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M37" width="50" height="40" alt="Odonto"
					usemap="#M37"> 
					<map name="M37">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M37');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M37');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M37');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M37');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M37');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        		<td>
        		<div class="capa" >
					<img src="../app/resources/imagenes/muestra_blanco.svg" id="M38" width="50" height="40" alt="Odonto"
					usemap="#M38"> 
					<map name="M38">
					<area shape="circle" coords="25,20,8" onclick="marca('C','M38');" title="C"  />
					<area shape="Square" coords="16,3,34,11" onclick="marca('P1','M38');" title="P1"  />
					<area shape="Square"   coords="37,13,48,27" onclick="marca('P2','M38');" title="P2"  /> 
					<area shape="Square" coords="16,28,34,37" onclick="marca('P3','M38');" title="P3"  /> 
					<area shape="Square" coords="4,13,15,27" onclick="marca('P4','M38');" title="P4"/> 					
					</map>	
				</div>		
        		</td>
        	</tr> 
        	<tr>
        		<td>48</td><td>47</td><td>46</td><td>45</td><td>44</td><td>43</td><td>42</td><td  style="border-right-color: red;" >41</td>
        		<td>31</td><td>32</td><td>33</td><td>34</td><td>35</td><td>36</td><td>37</td><td>38</td>
        	</tr> 
        </table>
        </div>
        </div>
       
       
       
 	<script type="text/javascript">
 	
	var allDiag = [{'DIA':'K020','VALOR':0},{'DIA':'K021','VALOR':0},{'DIA':'K040','VALOR':0},{'DIA':'K041','VALOR':0},
	{'DIA':'K050','VALOR':0},{'DIA':'Z012','VALOR':0}];
	
 	
	
	var procedimientos = 
		[{'DIA':'K020','PRO': 
			[{'COD':'232101','PROC':'OBTURACION DENTAL POR SUPERFICIE CON AMALGAMA','VALOR':0},
			 {'COD':'232102','PROC':'OBTURACION DENTAL POR SUPERFICIE CON RESINA DE FOTOCURADO','VALOR':0},
			 {'COD':'232103','PROC':'OBTURACION DENTAL POR SUPERFICIE CON IONOMERO DE VIDRIO','VALOR':0},
			 {'COD':'232200','PROC':'OBTURACION TEMPORAL POR DIENTE','VALOR':0}
			],
		},
		{'DIA':'K021','PRO': 
			[{'COD':'232101','PROC':'OBTURACION DENTAL POR SUPERFICIE CON AMALGAMA','VALOR':0},
			 {'COD':'232102','PROC':'OBTURACION DENTAL POR SUPERFICIE CON RESINA DE FOTOCURADO','VALOR':0},
			 {'COD':'232103','PROC':'OBTURACION DENTAL POR SUPERFICIE CON IONOMERO DE VIDRIO','VALOR':0},
			 {'COD':'232200','PROC':'OBTURACION TEMPORAL POR DIENTE','VALOR':0},
			 {'COD':'237102','PROC':'PULPOTOMIA CON PULPECTOMIA','VALOR':0}
			] 
		},
		{'DIA':'K040','PRO': 
			[{'COD':'237102','PROC':'PULPOTOMIA CON PULPECTOMIA','VALOR':0}
			] 
		},
		{'DIA':'K041','PRO': 
			[{'COD':'237102','PROC':'PULPOTOMIA CON PULPECTOMIA','VALOR':0}
			] 
		},
		{'DIA':'K050','PRO': 
			[{'COD':'240200','PROC':'DETARTRAJE SUBGINGIVAL (POR CUADRANTE)','VALOR':0},
			 {'COD':'997301','PROC':'DETARTRAJE SUPRAGINGIVAL','VALOR':0},
			 {'COD':'997500','PROC':'PROFILAXIS DENTAL','VALOR':0} 
			] 
		},		 
		{'DIA':'Z012','PRO': 
			[{'COD':'997102','PROC':'APLICACION DE SELLANTES DE FOTOCURADO','VALOR':0},
			 {'COD':'997103','PROC':'TOPICACION DE FLUOR EN GEL','VALOR':0},
			 {'COD':'997104','PROC':'TOPICACION DE FLUOR EN SOLUCION','VALOR':0},
			 {'COD':'997301','PROC':'DETARTRAJE SUPRAGINGIVAL','VALOR':0},
			 {'COD':'997500','PROC':'PROFILAXIS DENTAL','VALOR':0} 
			] 
		}
		 
		 
		 ];

	var variables =[{'ID':'M11','IDEN': 'C' ,'VALOR':0},
		 {'ID':'M11','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M11','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M11','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M11','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M12','IDEN': 'C' ,'VALOR':0},
		{'ID':'M12','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M12','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M12','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M12','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M13','IDEN': 'C' ,'VALOR':0},
		{'ID':'M13','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M13','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M13','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M13','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M14','IDEN': 'C' ,'VALOR':0},
		{'ID':'M14','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M14','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M14','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M14','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M15','IDEN': 'C' ,'VALOR':0},
		{'ID':'M15','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M15','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M15','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M15','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M16','IDEN': 'C' ,'VALOR':0},
		{'ID':'M16','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M16','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M16','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M16','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M17','IDEN': 'C' ,'VALOR':0},
		{'ID':'M17','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M17','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M17','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M17','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M18','IDEN': 'C' ,'VALOR':0},
		{'ID':'M18','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M18','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M18','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M18','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M21','IDEN': 'C' ,'VALOR':0},
		{'ID':'M21','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M21','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M21','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M21','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M22','IDEN': 'C' ,'VALOR':0},
		{'ID':'M22','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M22','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M22','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M22','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M23','IDEN': 'C' ,'VALOR':0},
		{'ID':'M23','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M23','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M23','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M23','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M24','IDEN': 'C' ,'VALOR':0},
		{'ID':'M24','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M24','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M24','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M24','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M25','IDEN': 'C' ,'VALOR':0},
		{'ID':'M25','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M25','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M25','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M25','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M26','IDEN': 'C' ,'VALOR':0},
		{'ID':'M26','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M26','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M26','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M26','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M27','IDEN': 'C' ,'VALOR':0},
		{'ID':'M27','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M27','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M27','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M27','IDEN': 'P4' ,'VALOR':0},	
		{'ID':'M28','IDEN': 'C' ,'VALOR':0},
		{'ID':'M28','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M28','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M28','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M28','IDEN': 'P4' ,'VALOR':0},	
		{'ID':'M31','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M32','IDEN': 'C' ,'VALOR':0},
		{'ID':'M32','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M32','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M32','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M32','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M33','IDEN': 'C' ,'VALOR':0},
		{'ID':'M33','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M33','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M33','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M33','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M34','IDEN': 'C' ,'VALOR':0},
		{'ID':'M34','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M34','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M34','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M34','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M35','IDEN': 'C' ,'VALOR':0},
		{'ID':'M35','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M35','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M35','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M35','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M36','IDEN': 'C' ,'VALOR':0},
		{'ID':'M36','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M36','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M36','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M36','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M37','IDEN': 'C' ,'VALOR':0},
		{'ID':'M37','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M37','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M37','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M37','IDEN': 'P4' ,'VALOR':0},	
		{'ID':'M38','IDEN': 'C' ,'VALOR':0},
		{'ID':'M38','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M38','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M38','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M38','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M41','IDEN': 'C' ,'VALOR':0},
		{'ID':'M41','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M41','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M41','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M41','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M42','IDEN': 'C' ,'VALOR':0},
		{'ID':'M42','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M42','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M42','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M42','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M43','IDEN': 'C' ,'VALOR':0},
		{'ID':'M43','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M43','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M43','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M43','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M44','IDEN': 'C' ,'VALOR':0},
		{'ID':'M44','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M44','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M44','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M44','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M45','IDEN': 'C' ,'VALOR':0},
		{'ID':'M45','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M45','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M45','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M45','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M46','IDEN': 'C' ,'VALOR':0},
		{'ID':'M46','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M46','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M46','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M46','IDEN': 'P4' ,'VALOR':0},
		{'ID':'M47','IDEN': 'C' ,'VALOR':0},
		{'ID':'M47','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M47','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M47','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M47','IDEN': 'P4' ,'VALOR':0},	
		{'ID':'M48','IDEN': 'C' ,'VALOR':0},
		{'ID':'M48','IDEN': 'P1' ,'VALOR':0}, 
		{'ID':'M48','IDEN': 'P2' ,'VALOR':0}, 
		{'ID':'M48','IDEN': 'P3' ,'VALOR':0}, 
		{'ID':'M48','IDEN': 'P4' ,'VALOR':0}
		
		];

	

	   function diagnosticos(dia){ 		   
		   
		   $('#procedimientos').find('option').remove().end().append('');
		   $('#procedimientos').selectpicker('refresh');
		   
			  for (var i = 0; i < allDiag.length; i++) {
				  if (allDiag[i].DIA == dia){ 
						if (allDiag[i].VALOR==1) {
							allDiag[i].VALOR=0;
						break;
						} else{		
							allDiag[i].VALOR=1;
						break;
						}
						
					}
			   }
			  
				//	alert(procedimientos[0].PRO[0].PROC);
				
				//.find('option')
    
			 // $('#procedimientos').empty();
			  for (var f = 0; f < allDiag.length; f++) {
				  
				  if (allDiag[f].VALOR == 1){ 
					 
					  for (var i = 0; i < procedimientos.length; i++) {						 
						  if (procedimientos[i].DIA == allDiag[f].DIA){ 
							  
							  var varProc = procedimientos[i].PRO;							 
							  for (var j = 0; j < varProc.length; j++) {
								  var cuenta = 0;
								  $("#procedimientos option").each(function(){
								        if ($(this).val() == varProc[j].COD ){        
								         cuenta=cuenta+1;
								        }
								     });
								 
								 if (cuenta==0){ 
									 $("#procedimientos").append('<option value='+varProc[j].COD+'>'+varProc[j].COD+'-'+varProc[j].PROC+'</option>');
									 $('#procedimientos').selectpicker('refresh');
								 }
								  					 
							  }				  
							  
						  }
						  
					  }
					  
				  }
				  
			  }
			 
			  
			 
		  }	   
	 
	   function procedimientos(proc){ 
		   
		   alert(proc);
		   
	   }
	   
	   function marca(val, muelita){

		   var valorFinal="";
		    
		   	for (var i = 0; i < variables.length; i++) {

		   	if (variables[i].ID == muelita){	
		   		if (variables[i].IDEN == val){ 
		   			if (variables[i].VALOR==1) {
		   			variables[i].VALOR=0;
		   			break;
		   			} else{		
		   			variables[i].VALOR=1;
		   			break;
		   			}
		   			
		   		}
		   	
		   	} 
		   	
		   	}
		   valorFinal="";
		   	for (var i = 0; i < variables.length; i++) {
		   	if (variables[i].ID == muelita){	 
		   		if (variables[i].VALOR == 1){
		   			valorFinal=valorFinal+variables[i].IDEN;
		   			}
		   		}
		   	}

		   	if (valorFinal==""){
		   	valorFinal="blanco"
		   	};
		   var rutaImg = "../app/resources/imagenes/muestra_"+valorFinal+".svg";
		    
		   //alert(variables[0].IDEN);
		   document.getElementById(muelita).src=rutaImg;
		   }
		    
	   
 	</script>
           

    </form>
   </div> 
<br /><br /><br />
 
</body>
</html>