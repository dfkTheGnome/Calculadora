<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css.css">
    <title>Calculadora</title>
</head>
<%
String boton = request.getParameter("boton");
if(boton == null)boton="";
String acumulado = request.getParameter("acumulado");
if(acumulado==null)acumulado="";
int op;
	int opTemp;
	char simb;
if(boton.equals("=")){
	
	for (int i = 0; i < acumulado.length(); i++) {
		while(acumulado.charAt(i) >= 48 && acumulado.charAt(i) <= 57 || i < acumulado.length()) {
			
           opTemp = acumulado.charAt(i) - 48;
			i++;
    }
	if(i < acumulado.length()-1)op = opTemp;
	simb = acumulado.charAt(i);
	i++;

}
if (boton.equals("=")){
	switch (simb){
       	case '+': acumulado = opTemp + op break;
        case '-': acumulado = opTemp - op break;
		case '*': acumulado = opTemp * op break;
		case '/': acumulado = opTemp / op break;
    }
}
if (!(boton.equals("="))) acumulado = acumulado+boton;
if (boton.equals("C")) acumulado = "";
%>
<body>
    <header></header>
    <main>
        <form action="index.jsp" method="get">
        	<input type="textfield" name="resultado" value="<%out.print(acumulado);%>" id="display" emabled>
        	<input type="hidden" value="<%out.print(acumulado);%>" name="acumulado">
            <input type="submit" name="boton" value="+">
            <input type="submit" name="boton" value="-">
            <input type="submit" name="boton" value="*">
            <input type="submit" name="boton" value="/">
            <input type="submit" name="boton" value="C">
            <input type="submit" name="boton" value="1">
            <input type="submit" name="boton" value="2">
            <input type="submit" name="boton" value="3">
            <input type="submit" name="boton" value="4">
            <input type="submit" name="boton" value="5">
            <input type="submit" name="boton" value="6">
            <input type="submit" name="boton" value="7">
            <input type="submit" name="boton" value="8">
            <input type="submit" name="boton" value="9">
            <input type="submit" name="boton" value="0">
            <input type="submit" name="boton" value="=">
        </form>
    </main>
    <footer></footer>
</body>
</html>