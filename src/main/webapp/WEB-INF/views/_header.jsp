<!DOCTYPE html>

<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<header>
    <nav class="nav justify-content-center">
        <ul class="nav nav-fill">
            <li class="nav-item">
                <a class="nav-link" href="#"><img src="<%= contextPath %>/img/logo.png">Lazy Food</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="#">Rechercher une recette</a>
            </li>

            <c:choose>
                <c:when test="${sessionScope.user != null}">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toogle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Bonjour NOM PRENOM</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Favourites</a>
                            <a class="dropdown-item" href="#">Blacklist</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Disconnection</a>
                        </div>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/Lazy-Food/user/login.html">Login</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
    </nav>
</header>