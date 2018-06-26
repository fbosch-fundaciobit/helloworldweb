<!-- Import de la classe calculadora2 -->
<%@ page import="org.fundaciobit.helloworld.helloworld.Calculadora2"%>



<%
// Declaració de variables:
 Integer result=null; //Var del resultat
 String n1 = request.getParameter("n1");// Vars del formulari.
 String n2 = request.getParameter("n2");
 Integer v1; //Variables auxiliars per transformar els string a int.
 Integer v2;
 Calculadora2 calculadora = new Calculadora2(); 
 
 //Si el formulari no te cap camp buid:
 if (n1 != null && n1.trim().length()!=0 &&
     n2 != null && n2.trim().length()!=0){
	 //Casting del formulari a integer.
	 v1 = Integer.parseInt(n1);
	 v2 = Integer.parseInt(n2);
	 //Segons el boto pulsat, es fa la operacio corresponent.
  	if(request.getParameter("suma") == null){
 		result= calculadora.resta(v1,v2); 	
 	}else{
 		result= calculadora.suma(v1,v2); 	
 	}
 }
%>
<html>
<body>
<h2 align="center">Calculadora</h2>
<%out.println("Introdueix dos nombres:");%>

<!-- Formulari: -->
<form action="index.jsp">
  <input type="text" name="n1" min="1" max="99">
  <input type="text" name="n2" min="1" max="99">
  <input type="submit" name="suma" value="suma"></input>
  <input type="submit" name="resta" value="resta"></input>
</form>

<!-- Si el resultat es null, no el mostrarem -->
 <%
  if (result != null){
 %>Resultado= 
 <textarea id="resultado" type="number" rows="1" cols="15">
 	<%=result%>
 </textarea>
  <%}
 %>
</body>
</html>
