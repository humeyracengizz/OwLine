<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sosmessage.aspx.cs" Inherits="OWLINEbasic.sosmessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>SOS - İletişim</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="./favicon.ico">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/assets/vendor/bootstrap-icons/font/bootstrap-icons.css">

    <!-- CSS Front Template -->

    <link rel="preload" href="/assets/css/theme.min.css" data-hs-appearance="default" as="style">
    <link rel="preload" href="/assets/css/theme-dark.min.css" data-hs-appearance="dark" as="style">

    <style data-hs-appearance-onload-styles>
        * {
            transition: unset !important;
        }

        body {
            opacity: 0;
        }
    </style>
    <script>
        window.hs_config = { "autopath": "@@autopath", "deleteLine": "hs-builder:delete", "deleteLine:build": "hs-builder:build-delete", "deleteLine:dist": "hs-builder:dist-delete", "previewMode": false, "startPath": "/index.html", "vars": { "themeFont": "https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap", "version": "?v=1.0" }, "layoutBuilder": { "extend": { "switcherSupport": true }, "header": { "layoutMode": "default", "containerMode": "container-fluid" }, "sidebarLayout": "default" }, "themeAppearance": { "layoutSkin": "default", "sidebarSkin": "default", "styles": { "colors": { "primary": "#377dff", "transparent": "transparent", "white": "#fff", "dark": "132144", "gray": { "100": "#f9fafc", "900": "#1e2022" } }, "font": "Inter" } }, "languageDirection": { "lang": "en" }, "skipFilesFromBundle": { "dist": ["assets/js/hs.theme-appearance.js", "assets/js/hs.theme-appearance-charts.js", "assets/js/demo.js"], "build": ["assets/css/theme.css", "assets/vendor/hs-navbar-vertical-aside/dist/hs-navbar-vertical-aside-mini-cache.js", "assets/js/demo.js", "assets/css/theme-dark.css", "assets/css/docs.css", "assets/vendor/icon-set/style.css", "assets/js/hs.theme-appearance.js", "assets/js/hs.theme-appearance-charts.js", "node_modules/chartjs-plugin-datalabels/dist/chartjs-plugin-datalabels.min.js", "assets/js/demo.js"] }, "minifyCSSFiles": ["assets/css/theme.css", "assets/css/theme-dark.css"], "copyDependencies": { "dist": { "*assets/js/theme-custom.js": "" }, "build": { "*assets/js/theme-custom.js": "", "node_modules/bootstrap-icons/font/*fonts/**": "assets/css" } }, "buildFolder": "", "replacePathsToCDN": {}, "directoryNames": { "src": "./src", "dist": "./dist", "build": "./build" }, "fileNames": { "dist": { "js": "theme.min.js", "css": "theme.min.css" }, "build": { "css": "theme.min.css", "js": "theme.min.js", "vendorCSS": "vendor.min.css", "vendorJS": "vendor.min.js" } }, "fileTypes": "jpg|png|svg|mp4|webm|ogv|json" }
        window.hs_config.gulpRGBA = (p1) => {
            const options = p1.split(',')
            const hex = options[0].toString()
            const transparent = options[1].toString()

            var c;
            if (/^#([A-Fa-f0-9]{3}){1,2}$/.test(hex)) {
                c = hex.substring(1).split('');
                if (c.length == 3) {
                    c = [c[0], c[0], c[1], c[1], c[2], c[2]];
                }
                c = '0x' + c.join('');
                return 'rgba(' + [(c >> 16) & 255, (c >> 8) & 255, c & 255].join(',') + ',' + transparent + ')';
            }
            throw new Error('Bad Hex');
        }
        window.hs_config.gulpDarken = (p1) => {
            const options = p1.split(',')

            let col = options[0].toString()
            let amt = -parseInt(options[1])
            var usePound = false

            if (col[0] == "#") {
                col = col.slice(1)
                usePound = true
            }
            var num = parseInt(col, 16)
            var r = (num >> 16) + amt
            if (r > 255) {
                r = 255
            } else if (r < 0) {
                r = 0
            }
            var b = ((num >> 8) & 0x00FF) + amt
            if (b > 255) {
                b = 255
            } else if (b < 0) {
                b = 0
            }
            var g = (num & 0x0000FF) + amt
            if (g > 255) {
                g = 255
            } else if (g < 0) {
                g = 0
            }
            return (usePound ? "#" : "") + (g | (b << 8) | (r << 16)).toString(16)
        }
        window.hs_config.gulpLighten = (p1) => {
            const options = p1.split(',')

            let col = options[0].toString()
            let amt = parseInt(options[1])
            var usePound = false

            if (col[0] == "#") {
                col = col.slice(1)
                usePound = true
            }
            var num = parseInt(col, 16)
            var r = (num >> 16) + amt
            if (r > 255) {
                r = 255
            } else if (r < 0) {
                r = 0
            }
            var b = ((num >> 8) & 0x00FF) + amt
            if (b > 255) {
                b = 255
            } else if (b < 0) {
                b = 0
            }
            var g = (num & 0x0000FF) + amt
            if (g > 255) {
                g = 255
            } else if (g < 0) {
                g = 0
            }
            return (usePound ? "#" : "") + (g | (b << 8) | (r << 16)).toString(16)
        }
    </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>

        $(document).ready(function () {

            
                var queryString = window.location.search;

                $.ajax({
                    url: 'get_message.aspx' + queryString,
                    type: 'GET',
                    dataType: 'json',
                    success: function (data) {
                        var tbody = $("#datatable tbody");
                        tbody.empty();
                        $.each(data, function (index, item) {
                            var row = "<tr>" +
                                "<td class='table-column-pe-0'>" +
                                "<div class='form-check'>" +
                                "<input class='form-check-input' type='checkbox' value='' id='usersDataCheck" + index + "'>" +
                                "<label class='form-check-label' for='usersDataCheck" + index + "'></label>" +
                                "</div>" +
                                "</td>" +
                                "<td>" +
                                "<a class='d-flex align-items-center' href='./user-profile.html'>" +
                                "<div class='avatar avatar-sm avatar-soft-primary avatar-circle'>" +
                                "<span class='avatar-initials'>" + item.initials + "</span>" +
                                "</div>" +
                                "<div class='flex-grow-1 ms-3'>" +
                                "<span class='card-title h5 text-inherit'>" + item.name + "</span>" +
                                "<span class='d-block fs-6 text-body'>" + item.email + "</span>" +
                                "</div>" +
                                "</a>" +
                                "</td>" +
                                "<td>" +
                                "<div class='text-wrap' style='width: 18rem;'>" +
                                "<div class='d-flex gap-1 mb-2'></div>" +
                                "<h4 class='mb-1'></h4>" +
                                "<p>" + item.mesaage + "</p>" +
                                "</div>" +
                                "</td>" +
                                "<td>" + item.timestamp + "</td>" +
                                "" +
                                "<td></td>" +
                                "</tr>";
                            tbody.append(row);
                        });
                    },
                    error: function () {

                    }
                });
            
        });
    </script>



</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script src="/assets/js/hs.theme-appearance.js"></script>

            <!-- ========== MAIN CONTENT ========== -->
            <main id="content" role="main" class="main">
                <div class="position-fixed top-0 end-0 start-0 bg-img-start" style="height: 32rem; background-image: url(/assets/svg/components/card-6.svg);">
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
                    <a class="d-flex justify-content-center mb-5" href="./index.html">
                        <img class="zi-2" src="/assets/svg/logos/logo.png" alt="Image Description" style="width: 8rem;">
                    </a>

                    <div class="mx-auto" style="max-width: 90rem;">
                        <!-- Card -->
                        <div class="card card-lg mb-9">
                            <div class="card-body">
                                <!-- Form -->
                                
                                <!-- Table -->
    <div class="table-responsive datatable-custom">
        <table id="datatable" class="table table-borderless table-thead-bordered table-nowrap card-table" data-hs-datatables-options='{
                   "columnDefs": [{
                      "targets": [0, 3, 6],
                      "orderable": false
                    }],
                   "order": [],
                   "info": {
                     "totalQty": "#datatableWithPaginationInfoTotalQty"
                   },
                   "search": "#datatableSearch",
                   "entries": "#datatableEntries",
                   "pageLength": 5,
                   "isResponsive": false,
                   "isShowPaging": false,
                   "pagination": "datatablePagination"
                 }'>
            <thead class="thead-light">
                <tr>
                    <th scope="col" class="table-column-pe-0">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="datatableCheckAll">
                            <label class="form-check-label" for="datatableCheckAll"></label>
                        </div>
                    </th>

                    <th>Gönderen</th>
                    <th>Mesaj</th>
                    <th>Tarih</th>
                </tr>
            </thead>

            <tbody>
            </tbody>
        </table>
    </div>

     <div class="card">
        <div class="card-header">
            <h3 class="card-header-title">Sohbet</h3>
        </div>
        <div class="card-body">
            <div class="mb-3">
                <label class="form-label" for="v">Mesaj Gönder</label>
                <asp:TextBox ID="txt_messages" class="form-control" placeholder="Mesajınızı buraya yazınız." rows="4" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Gönder" OnClick="Button1_Click" />
        </div>
    </div>


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
                                    <!-- End Col -->

                                    <di
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
                        // INITIALIZATION OF BOOTSTRAP VALIDATION
                        // =======================================================
                        HSBsValidation.init('.js-validate', {
                            onSubmit: data => {
                                data.event.preventDefault()
                                alert('Submited')
                            }
                        })


                        // INITIALIZATION OF TOGGLE PASSWORD
                        // =======================================================
                        new HSTogglePassword('.js-toggle-password')
                    }
                })()
            </script>
        </div>
    </form>
</body>
</html>
