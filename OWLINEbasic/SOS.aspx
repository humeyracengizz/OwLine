<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SOS.aspx.cs" Inherits="OWLINEbasic.SOS" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Acil Durum | OWLINE</title>

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

    <form id="form2" runat="server">

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

                <div class="mx-auto" style="max-width: 30rem;">

                    <!-- Card -->
                    <div class="card card-lg mb-5">

                        <div class="card-body">


                            <div class="text-center">
                                <div class="mb-5">
                                    <h1 class="display-5 text-danger">Acil Durum Bildir</h1>
                                </div>
                            </div>

                            <div class="alert alert-soft-danger" role="alert">
                                Acil Durum çağrınız merkeze iletildi. Müdehalenin hızlanması için lütfen aşağdaki bilgileride doldurarak iletiniz !
                            </div>

                            <!-- Form -->
                            <div class="mb-4">
                                <label class="form-label" for="signinSrEmail">İsim Soyisim</label>
                                <asp:TextBox class="form-control form-control-lg" placeholder="İsim Soyisim" ID="txt_NameSurname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator class="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Boş Bırakılamaz" ControlToValidate="txt_NameSurname" ValidationGroup="sos"></asp:RequiredFieldValidator>
                            </div>
                            <!-- End Form -->

                            <!-- Form -->
                            <div class="mb-4">
                                <label class="form-label" for="signinSrEmail">
                                    TcKimlik No<label class="text-secondary">(İsteğe Bağlı)</label></label>
                                <asp:TextBox class="form-control form-control-lg" placeholder="TC No" ID="txt_tckimlik" runat="server"></asp:TextBox>
                            </div>
                            <!-- End Form -->

                            <!-- Form -->
                            <div class="mb-4">
                                <label class="form-label" for="signinSrEmail">Adres:<label class="text-secondary">(Adres Açıklaması)</label></label>
                                <asp:TextBox class="form-control form-control-lg" placeholder="Adres" ID="txt_adress" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator class="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Boş Bırakılamaz" ControlToValidate="txt_adress" ValidationGroup="sos"></asp:RequiredFieldValidator>
                            </div>
                            <!-- End Form -->
                            <!-- Kanama Form -->
                            <div class="mb-4">
                                <label class="form-label" for="signinSrEmail">Kanamanız var mı?</label>
                                <div>

                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton1" GroupName="blood" class="form-check-input" Value="1Yok-Az kanama" runat="server" />
                                        <label class="form-check-label" for="RadioButton1">Yok - Az Kanama</label>
                                    </div>
                                    <!-- End Form Check -->
                                    <!-- Form Check -->
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton2" GroupName="blood" class="form-check-input" Value="2Kol veya bacak bölgesinde" runat="server" />
                                        <label class="form-check-label" for="RadioButton2">Kol veya bacak bölgesinde</label>
                                    </div>
                                    <!-- End Form Check -->
                                    <!-- Form Check -->
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton3" GroupName="blood" class="form-check-input" Value="3Gövde bölgesinde" runat="server" />
                                        <label class="form-check-label" for="RadioButton3">Gövde bölgesinde</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton4" GroupName="blood" class="form-check-input" Value="4Baş bölgesinde" runat="server" />
                                        <label class="form-check-label" for="RadioButton4">Baş bölgesinde</label>
                                    </div>
                                    <!-- End Form Check -->

                                </div>
                            </div>
                            <!-- Kanama End Form -->

                            <!-- Hareket Form -->
                            <div class="mb-4">
                                <label class="form-label" for="signinSrEmail">Hareket edebiliyor musunuz?</label>
                                <div>
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton5" GroupName="move" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton5">Evet</label>
                                    </div>
                                    <!-- End Form Check -->
                                    <!-- Form Check -->
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton6" GroupName="move" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton6">Sürünerek hareket edebiliyorum</label>
                                    </div>
                                    <!-- End Form Check -->
                                    <!-- Form Check -->
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton7" GroupName="move" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton7">Sıkıştım, hareket edemiyorum.</label>
                                    </div>

                                    <!-- End Form Check -->
                                </div>
                            </div>
                            <!-- Kanama End Form -->

                            <!-- Ağrı Form -->
                            <div class="mb-4">
                                <label class="form-label" for="signinSrEmail">Ağrı yada acı hissediyor musunuz?</label>
                                <div>
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton8" GroupName="pain" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton8">Hissetmiyorum.</label>
                                    </div>
                                    <!-- End Form Check -->
                                    <!-- Form Check -->
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton9" GroupName="pain" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton9">Kol ve ya bacak bölgesinde hissediyorum.</label>
                                    </div>
                                    <!-- End Form Check -->
                                    <!-- Form Check -->
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton10" GroupName="pain" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton10">Gövde bölgesinde hissediyorum.</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton11" GroupName="pain" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton11">Baş bölgesinde hissediyorum.</label>
                                    </div>
                                    <!-- End Form Check -->
                                </div>
                            </div>
                            <!-- Kanama End Form -->
                            <!-- Ağrı Form -->
                            <div class="mb-4">
                                <label class="form-label" for="signinSrEmail">Kaç kişisiniz ?</label>
                                <div>
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton12" GroupName="people" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton12">Tek başımayım</label>
                                    </div>
                                    <!-- End Form Check -->
                                    <!-- Form Check -->
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton13" GroupName="people" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton13">2-4 kişiyiz</label>
                                    </div>
                                    <!-- End Form Check -->
                                    <!-- Form Check -->
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton14" GroupName="people" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton14">5-8 kişiyiz</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButton ID="RadioButton15" GroupName="people" class="form-check-input" runat="server" />
                                        <label class="form-check-label" for="RadioButton15">8+ kişiyiz</label>
                                    </div>
                                    <!-- End Form Check -->
                                </div>
                            </div>
                            <!-- Kanama End Form -->
                            <div class="d-grid">
                                <asp:Button ID="Button1" class="btn btn-danger btn-lg" runat="server" Text="Bildir" OnClick="Button1_Click" ValidationGroup="sos" />
                            </div>
                            <br />
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                            <!-- End Form -->
                        </div>

                    </div>
                    <!-- End Card -->
                    <!-- Footer -->
                    <!-- -->
                    <div class="position-relative text-center zi-1">
                        <small class="text-cap text-body mb-4">OWLINE ACIL DURUM AĞI</small>

                        <div class="w-85 mx-auto">
                            <div class="row justify-content-between">
                                <div class="col">
                                    <img class="img-fluid" src="/assets/svg/logos/logo.png" alt="Logo">
                                </div>
                                <!-- End Col -->

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
        </script>
    </form>

</body>
</html>
