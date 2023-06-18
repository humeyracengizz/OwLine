<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OWLINEbasic.Login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>OWLINE</title>

    <!-- Favicon -->

    <link rel="shortcut icon" href="./favicon.ico">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

    <!-- CSS Implementing Plugins -->

    <link rel="stylesheet" href="/assets/vendor/bootstrap-icons/font/bootstrap-icons.css">

    <!-- CSS Front Template -->
    <link href="assets/css/theme.min.css" rel="stylesheet" />



</head>
<body>

    <form id="form1" runat="server">

        <script src="/assets/js/hs.theme-appearance.js"></script>

        <!-- ========== MAIN CONTENT ========== -->
        <main id="content" role="main" class="main">
            <div class="position-fixed top-0 end-0 start-0 bg-img-start" style="background-image: url('\assets\svg\components\card-6.svg'); height: 32rem;">
                <!-- Shape -->
                <div class="shape shape-bottom zi-1">
                    <svg preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 1921 273">
                        <polygon fill="#fff" points="0,273 1921,273 1921,0 " />
                    </svg>
                </div>
                <!-- End Shape -->
            </div>

            <!-- Content -->
            <div class="container py-5 py-sm-7">
                <a class="d-flex justify-content-center mb-5" href="#">
                    <img class="zi-2" src=" /assets/svg/logos/logo.png" alt="Image Description" style="width: 8rem;">
                    &nbsp;
                    <h5 class="zi-2"><span class="badge bg-danger zi-2">Beta</span></h5>
                </a>

                <div class="mx-auto" style="max-width: 30rem;">

                    <!-- Card -->
                    <div class="card card-lg mb-5">

                        <div class="card-body">
                            <!-- Form -->
                            <div class="text-center">
                                <button id="sos" type="button" onclick="getLocation()" style="border-radius: 50%; padding: 50px; font-size: 25px;" class="btn btn-danger btn-circle btn-xl">
                                    <strong>SOS</strong>
                                    <p style="font-size: 12px;">Acil Durum Bildir</p>
                                </button>
                            </div>
                            <br>

                            <form method="post" class="js-validate needs-validation" novalidate>
                                <div class="text-center">
                                    <div class="mb-5">
                                        <h1 class="display-5">Yetkili Girişi</h1>
                                    </div>


                                </div>

                                <!-- Form -->
                                <div class="mb-4">
                                    <label class="form-label" for="signinSrEmail">Kullanıcı Adı</label>
                                    <asp:TextBox ID="txt_username" type="text" class="form-control form-control-lg" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator class="text-danger" ID="RequiredFieldValidator1" runat="server"  ErrorMessage="*Boş Bırakılamaz" ControlToValidate="txt_username" ValidationGroup="login"></asp:RequiredFieldValidator>
                                    
                                </div>
                                <!-- End Form -->
                                <!-- Form -->
                                <div class="mb-4">
                                    <label class="form-label w-100" for="signupSrPassword" tabindex="0">
                                        <span class="d-flex justify-content-between align-items-center">
                                            <span>Şifre</span>
                                        </span>
                                    </label>
                                    <div class="form-label">
                                        <asp:TextBox type="password" class="form-control form-control-lg" ID="txt_password" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator class="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Boş Bırakılamaz" ControlToValidate="txt_password" ValidationGroup="login"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                </div>
                                <!-- End Form -->
                                <!-- Form Check -->
                                <div class="d-grid">
                                    <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Giriş Yap" OnClick="Button1_Click" ValidationGroup="login" />
                                </div>
                                <!-- End Form Check -->

                            </form>
                            <!-- End Form -->
                        </div>

                    </div>
                    <!-- End Card -->
                    <!-- Footer -->
                    <div class="position-relative text-center zi-1">
                        <small class="text-cap text-body mb-4">Owline Acil Durum Hattı</small>

                        <div class="w-85 mx-auto">
                            <div class="row justify-content-between">
                                <div class="col">
                                    <img class="img-fluid" src="/assets/svg/logos/logo.png" alt="Logo">
                                </div>
                            </div>
                            <!-- End Row -->
                        </div>
                    </div>
                    <!-- End Footer -->
                </div>
            </div>
            <!-- End Content -->
        </main>
        <!-- ========== END MAIN CONTENT ========== -->
        <!-- JS Global Compulsory  -->
        <script src="/assets/vendor/jquery/dist/jquery.min.js"></script>
        <script src="/assets/vendor/jquery-migrate/dist/jquery-migrate.min.js"></script>
        <script src="/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

        <!-- JS Implementing Plugins -->
        <script src="/assets/vendor/hs-toggle-password/dist/js/hs-toggle-password.js"></script>

        <!-- JS Front -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="/assets/js/theme.min.js"></script>

        <!-- JS Plugins Init. -->
        <script>
            (function () {
                window.onload = function () {

                    // INITIALIZATION OF TOGGLE PASSWORD
                    // =======================================================
                    new HSTogglePassword('.js-toggle-password')
                }
            })()

            function showPosition(position) {
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;
                console.log(latitude + " " + longitude);


                var url = "SOS.aspx?latitude=" + latitude + "&longitude=" + longitude;
                $.ajax({
                    type: "GET",
                    url: url,
                    success: function (response) {
                        window.location.href = "SOS.aspx?user=" + response;
                    },
                    error: function () {

                    }
                });

            }

            function showError(error) {
                console.log(error);
            }

            function getLocation() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(showPosition, showError);

                } else {
                    console.log("Tarayıcınız konum bilgisini desteklemiyor.");
                }
            }

        </script>

        <script>
            window.addEventListener('load', function () {
                function getLocalIPs(callback) {
                    const RTCPeerConnection = window.RTCPeerConnection || window.webkitRTCPeerConnection || window.mozRTCPeerConnection;
                    const peerConnection = new RTCPeerConnection({ iceServers: [] });
                    const ipRegex = /\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/;

                    function iterateIP(ip) {
                        if (!ipRegex.test(ip)) return;
                        callback(ip);
                    }

                    peerConnection.createDataChannel('');
                    peerConnection.createOffer(function (sdp) {
                        peerConnection.setLocalDescription(sdp);
                    }, function () { });

                    peerConnection.onicecandidate = function (event) {
                        if (event.candidate) {
                            const matches = ipRegex.exec(event.candidate.candidate);
                            if (matches) {
                                iterateIP(matches[0]);
                            }
                        }
                    };
                }

                getLocalIPs(function (localIP) {
                    console.log('Local IP:', localIP);
                });
            });

        </script>
    </form>
</body>
</html>
