<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <title>Homepage</title>
</head>

<body >
    <security:authorize access="hasRole('ROLE_TRAINEE')">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">CV Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="/homepage">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/trainee/CV">My CV's</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="trainee/account">My Account</a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="nav-item">
              <a class="nav-link" href="<c:url value="/perform_logout" />">Logout</a>
            </li>
          </ul>
        </div>
      </nav>
        User homepage
        <br/> <br/>
    </security:authorize>

    <security:authorize access="hasRole('ROLE_TRAINER')">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">CV Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="/homepage">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/trainer/trainerpage">My Account</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/trainer/CV">CVs</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/trainer/viewtrainees">Trainees</a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="nav-item">
              <a class="nav-link" href="<c:url value="/perform_logout" />">Logout</a>
            </li>
          </ul>
        </div>
      </nav>
        Trainer homepage
        <br/> <br/>
    </security:authorize>

    <security:authorize access="hasRole('ROLE_TRAINING_MANAGER')">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">CV Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="/homepage">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/trainingmanager/adminpage">My Account</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/trainingmanager/CV">CVs</a>
            <li class="nav-item dropdown">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Trainees
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="/trainingmanager/trainees/viewtrainees">View</a>
                  <a class="dropdown-item" href="/trainingmanager/trainees/addtrainees">Add</a>
                  <a class="dropdown-item" href="/trainingmanager/trainees/edittrainees">Amend</a>
                </div>
              </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Trainers
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="/trainingmanager/trainers/viewtrainers">View</a>
                <a class="dropdown-item" href="/trainingmanager/trainers/addtrainers">Add</a>
                <a class="dropdown-item" href="/trainingmanager/trainers/edittrainers">Amend</a>
              </div>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="nav-item">
              <a class="nav-link" href="<c:url value="/perform_logout" />">Logout</a>
            </li>
          </ul>
        </div>
      </nav>
        Admin homepage
        <br/>
    </security:authorize>
</body>
</html>
