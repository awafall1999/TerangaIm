<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>{{ config('app.name', 'Laravel') }}</title>

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.bunny.net">
  <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

  <!-- Scripts -->
  @vite(['resources/css/app.css', 'resources/js/app.js'])

  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href={{ asset("templates/templateAdmin/assets/img/favicon.png")}} rel="icon">
  <link href={{ asset("templates/templateAdmin/assets/img/apple-touch-icon.png")}} rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href={{ asset("https://fonts.gstatic.com")}} rel="preconnect">
  <link href={{ asset("https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i")}} rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href={{ asset("templates/templateAdmin/assets/vendor/bootstrap/css/bootstrap.min.css")}} rel="stylesheet">
  <link href={{ asset("templates/templateAdmin/assets/vendor/bootstrap-icons/bootstrap-icons.css")}} rel="stylesheet">
  <link href={{ asset("templates/templateAdmin/assets/vendor/boxicons/css/boxicons.min.css")}} rel="stylesheet">
  <link href={{ asset("templates/templateAdmin/assets/vendor/quill/quill.snow.css")}} rel="stylesheet">
  <link href={{ asset("templates/templateAdmin/assets/vendor/quill/quill.bubble.css")}} rel="stylesheet">
  <link href={{ asset("templates/templateAdmin/assets/vendor/remixicon/remixicon.css")}} rel="stylesheet">
  <link href={{ asset("templates/templateAdmin/assets/vendor/simple-datatables/style.css")}} rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href={{ asset("templates/templateAdmin/assets/css/style.css")}} rel="stylesheet">

</head>

<body>

  <!-- ======= MenuHaut ======= -->
  @include("partials.extract_admin.menuHaut")
  <!-- ======= MenuHaut ======= -->

  <!-- ======= MenuGauche ======= -->
  @include("partials.extract_admin.menuGauche")
  <!-- ===== End MenuGauche ===== -->

  <!-- ======= Content ======= -->
  @if (request()->routeIs('dashboard'))
    @include("partials.extract_admin.content")
  @else
    <main id="main" class="main">
        @yield("admin")
    </main>
  @endif
  <!-- ===== End Content ===== -->

  <!-- ======= Footer ======= -->
  @include("partials.extract_admin.footer")
   <!-- ===== EndFooter ===== -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src={{ asset("templates/templateAdmin/assets/vendor/apexcharts/apexcharts.min.js")}}></script>
  <script src={{ asset("templates/templateAdmin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js")}}></script>
  <script src={{ asset("templates/templateAdmin/assets/vendor/chart.js/chart.min.js")}}></script>
  <script src={{ asset("templates/templateAdmin/assets/vendor/echarts/echarts.min.js")}}></script>
  <script src={{ asset("templates/templateAdmin/assets/vendor/quill/quill.min.js")}}></script>
  <script src={{ asset("templates/templateAdmin/assets/vendor/simple-datatables/simple-datatables.js")}}></script>
  <script src={{ asset("templates/templateAdmin/assets/vendor/tinymce/tinymce.min.js")}}></script>
  <script src={{ asset("templates/templateAdmin/assets/vendor/php-email-form/validate.js")}}></script>

  <!-- Template Main JS File -->
  <script src={{ asset("templates/templateAdmin/assets/js/main.js")}}></script>

</body>

</html>
