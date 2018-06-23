<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<jsp:include page="include.jsp" />
    
	<title>Login</title>
<style type="text/css">
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
</style>
</head>
<body><div class="login-form" >
    <form action="getloguin" method="post"  >
        <h2 class="text-center">User Login</h2>       
        <div class="form-group">
            <input type="text" name="usuario" class="form-control" placeholder="Usuario" required="required">
        </div>
        <div class="form-group">
            <input type="password" name="pass" class="form-control" placeholder="Contrase�a" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block" value="logear">Log in</button>
        </div>
        <div class="clearfix">
            
            <a href="getMovimientos" class="pull-right">Olvid� mi contrase�a</a>
        </div>        
    </form>
    
</div>

 
</body>
</html>
