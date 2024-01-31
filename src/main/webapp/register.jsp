<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@200;300;400;500;600;700;800;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <link rel="stylesheet" href="css/style.css">


</head>
<body>
    <section class="py-5 container">
        <div>
            <h1 class="text-center mb-4 text-uppercase regi">Registration Form</h1>
        </div>
		<div class="col-12 col-md-8 col-lg-6  mx-auto p-3 bord">
			<form action="Register" method="post" >
            <div class="my-3 d-md-flex align-items-center justify-content-evenly">
                <label for="name" class="mb-1 col-md-4 col-lg-3">Name :</label>
                <div class="col-md-7">
                    <input type="text" placeholder="Enter full name" required id="name" name="name" class="form-control"/>
                </div>
            </div>
            <div class="my-3 d-md-flex align-items-center justify-content-evenly">
                <label for="mail" class="mb-1 col-md-4 col-lg-3">Mail Id :</label>
                <div class="col-md-7">
                    <input type="email" id="mail" required name="mail" class="form-control"/>
                </div>
            </div> 
            <div class="my-3 d-md-flex align-items-center justify-content-evenly">
                <label for="name" class="mb-1 col-md-4 col-lg-3">Password :</label>
                <div class="col-md-7">
                    <input type="text" required placeholder="password" id="name" name="pass" class="form-control"/>
                </div>
            </div>
            <div class="text-center">
                <button type="submit" class="but">Submit</button>
            </div>
        </form>
		</div>
        
    </section>
    <div>

    </div>
</body>
</html>