<%
    String nameShop = "BITLAB Shop";
    String buyNow = "Buy Now";
%>

<nav class="navbar bg-body-tertiary">
    <div class="container">
        <a class="navbar-brand" href="#">
            <%=nameShop%>
        </a>
        <ul class="nav justify-content-end">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Top Sales</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">New Sales</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">By Category</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/LoginServlet">Sign in</a>
            </li>
        </ul>
    </div>
</nav>