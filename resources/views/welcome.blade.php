<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #f8f9fa;
            padding-top: 20px;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h2 class="text-center">Admin Dashboard</h2>
    <hr>
    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link" href="{{ route ('search-by-name')}}">Search by Name</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route ('search-by-nim')}}">Search by NIM</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{('search-by-myd')}}">Search by YMD</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">User</a>
        </li>
    </ul>
</div>

<!-- Page content -->
<div class="content">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <span class="navbar-brand mb-0 h1">Admin Dashboard</span>
        <div class="collapse navbar-collapse justify-content-end">
            <span class="navbar-text mr-4">Logged in as: {{Auth::user()->name}}</span>
			  <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
            Logout
        </a>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
            @csrf
        </form>

        </div>
    </nav>
    <div class="container-fluid mt-4">
       <!-- <h3>Selamat Datang {{Auth::user()->name}}</h3>-->
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
