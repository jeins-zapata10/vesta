<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Vesta - Dotacion Industrial</title>

    <!-- fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700' rel='stylesheet' type='text/css'>
    <link href='assets/font-awesome/css/font-awesome.css' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/responsive.css" rel="stylesheet">

    <!-- Slider -->
    <link href="assets/css/owl.carousel.css" rel="stylesheet">
    <link href="assets/css/owl.theme.css" rel="stylesheet">
    <link href="assets/css/owl.transitions.css" rel="stylesheet">

    <!-- lightbox -->
    <link href="assets/css/prettyPhoto.css" rel="stylesheet">

    {{-- Favicon --}}
    <link rel="icon" type="image/png" href="assets/images/Logo_Vesta.png">

</head>

<body>
    <div id="wrapper" class="homepage-1"> <!-- wrapper -->
        <!-- header -->
        <div id="header">
            <!-- Start top -->
            @yield('top')
            <!-- End top -->
            <!-- Start Nav -->
            @yield('nav')
            <!-- End Nav -->
            {{-- Start cat_nav --}}
            @yield('cat_nav')
            {{-- End cat_nav --}}
            <!-- Strart Slider -->
            @yield('slider')
            <!-- End Slider -->
            <!-- Start Content -->
            @yield('portada')
            <!-- End Content -->
            <!-- Start Footer -->
            @yield('footer')
            <!-- End Footer -->
        </div> <!-- wrapper -->

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="assets/js/library.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/jquery.raty.js"></script>
        <script src="assets/js/ui.js"></script>
        <script src="assets/js/jquery.prettyPhoto.js"></script>
        <script src="assets/js/jquery.selectbox-0.2.js"></script>
        <script src="assets/js/theme-script.js"></script>
</body>

</html>
