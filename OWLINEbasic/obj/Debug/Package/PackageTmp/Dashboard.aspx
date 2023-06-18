<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="OWLINEbasic.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
            <!-- Card -->
            <a class="card card-hover-shadow h-100" href="#">
                <div class="card-body">
                    <h6 class="card-subtitle">Toplam Kullanıcı Personel</h6>

                    <div class="row align-items-center gx-2 mb-1">
                        <div class="col-6">
                            <h2 class="card-title text-inherit">170</h2>
                        </div>
                        <!-- End Col -->

                        <div class="col-6">
                            <!-- Chart -->
                            <div class="chartjs-custom" style="height: 3rem;">
                                <canvas class="js-chart" data-hs-chartjs-options='{
                              "type": "line",
                              "data": {
                                 "labels": ["1 May","2 May","3 May","4 May","5 May","6 May","7 May","8 May","9 May","10 May","11 May","12 May","13 May","14 May","15 May","16 May","17 May","18 May","19 May","20 May","21 May","22 May","23 May","24 May","25 May","26 May","27 May","28 May","29 May","30 May","31 May"],
                                 "datasets": [{
                                  "data": [21,20,24,20,18,17,15,17,18,30,31,30,30,35,25,35,35,40,60,90,90,90,85,70,75,70,30,30,30,50,72],
                                  "backgroundColor": ["rgba(55, 125, 255, 0)", "rgba(255, 255, 255, 0)"],
                                  "borderColor": "#377dff",
                                  "borderWidth": 2,
                                  "pointRadius": 0,
                                  "pointHoverRadius": 0
                                }]
                              },
                              "options": {
                                 "scales": {
                                   "y": {
                                     "display": false
                                   },
                                   "x": {
                                     "display": false
                                   }
                                 },
                                "hover": {
                                  "mode": "nearest",
                                  "intersect": false
                                },
                                "plugins": {
                                  "tooltip": {
                                    "postfix": "k",
                                    "hasIndicator": true,
                                    "intersect": false
                                  }
                                }
                              }
                            }'></canvas>
                            </div>
                            <!-- End Chart -->
                        </div>
                        <!-- End Col -->
                    </div>
                    <!-- End Row -->

                    <span class="badge bg-soft-success text-success">
                        <i class="bi-graph-up"></i>12.5%
                    </span>
                    <span class="text-body fs-6 ms-1">from 123</span>
                </div>
            </a>
            <!-- End Card -->
        </div>

        <div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
            <!-- Card -->
            <a class="card card-hover-shadow h-100" href="#">
                <div class="card-body">
                    <h6 class="card-subtitle">Acil Durum Çağrısı</h6>

                    <div class="row align-items-center gx-2 mb-1">
                        <div class="col-6">
                            <h2 class="card-title text-inherit">82,4%</h2>
                        </div>
                        <!-- End Col -->

                        <div class="col-6">
                            <!-- Chart -->
                            <div class="chartjs-custom" style="height: 3rem;">
                                <canvas class="js-chart" data-hs-chartjs-options='{
                              "type": "line",
                              "data": {
                                 "labels": ["1 May","2 May","3 May","4 May","5 May","6 May","7 May","8 May","9 May","10 May","11 May","12 May","13 May","14 May","15 May","16 May","17 May","18 May","19 May","20 May","21 May","22 May","23 May","24 May","25 May","26 May","27 May","28 May","29 May","30 May","31 May"],
                                 "datasets": [{
                                  "data": [21,20,24,20,18,17,15,17,30,30,35,25,18,30,31,35,35,90,90,90,85,100,120,120,120,100,90,75,75,75,90],
                                  "backgroundColor": ["rgba(55, 125, 255, 0)", "rgba(255, 255, 255, 0)"],
                                  "borderColor": "#377dff",
                                  "borderWidth": 2,
                                  "pointRadius": 0,
                                  "pointHoverRadius": 0
                                }]
                              },
                              "options": {
                                 "scales": {
                                   "y": {
                                     "display": false
                                   },
                                   "x": {
                                     "display": false
                                   }
                                 },
                                "hover": {
                                  "mode": "nearest",
                                  "intersect": false
                                },
                                "plugins": {
                                  "tooltip": {
                                    "postfix": "k",
                                    "hasIndicator": true,
                                    "intersect": false
                                  }
                                }
                              }
                            }'></canvas>
                            </div>
                            <!-- End Chart -->
                        </div>
                        <!-- End Col -->
                    </div>
                    <!-- End Row -->

                    <span class="badge bg-soft-success text-success">
                        <i class="bi-graph-up"></i>125,01%
                    </span>
                    <span class="text-body fs-6 ms-1">from 0.1%</span>
                </div>
            </a>
            <!-- End Card -->
        </div>

        <div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
            <!-- Card -->
            <a class="card card-hover-shadow h-100" href="#">
                <div class="card-body">
                    <h6 class="card-subtitle">Bağlı Owline Modülü</h6>

                    <div class="row align-items-center gx-2 mb-1">
                        <div class="col-6">
                            <h2 class="card-title text-inherit">99,9%</h2>
                        </div>
                        <!-- End Col -->

                        <div class="col-6">
                            <!-- Chart -->
                            <div class="chartjs-custom" style="height: 3rem;">
                                <canvas class="js-chart" data-hs-chartjs-options='{
                              "type": "line",
                              "data": {
                                 "labels": ["1 May","2 May","3 May","4 May","5 May","6 May","7 May","8 May","9 May","10 May","11 May","12 May","13 May","14 May","15 May","16 May","17 May","18 May","19 May","20 May","21 May","22 May","23 May","24 May","25 May","26 May","27 May","28 May","29 May","30 May","31 May"],
                                 "datasets": [{
                                  "data": [25,18,30,31,35,35,60,60,60,75,21,20,24,20,18,17,15,17,30,120,120,120,100,90,75,90,90,90,75,70,60],
                                  "backgroundColor": ["rgba(55, 125, 255, 0)", "rgba(255, 255, 255, 0)"],
                                  "borderColor": "#377dff",
                                  "borderWidth": 2,
                                  "pointRadius": 0,
                                  "pointHoverRadius": 0
                                }]
                              },
                              "options": {
                                 "scales": {
                                   "y": {
                                     "display": false
                                   },
                                   "x": {
                                     "display": false
                                   }
                                 },
                                "hover": {
                                  "mode": "nearest",
                                  "intersect": false
                                },
                                "plugins": {
                                  "tooltip": {
                                    "postfix": "k",
                                    "hasIndicator": true,
                                    "intersect": false
                                  }
                                }
                              }
                            }'></canvas>
                            </div>
                            <!-- End Chart -->
                        </div>
                        <!-- End Col -->
                    </div>
                    <!-- End Row -->

                    <span class="badge bg-soft-danger text-danger">
                        <i class="bi-graph-down"></i>0,1%
                    </span>
                    <span class="text-body fs-6 ms-1">from 100,00%</span>
                </div>
            </a>
            <!-- End Card -->
        </div>

        <div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
            <!-- Card -->
            <a class="card card-hover-shadow h-100" href="#">
                <div class="card-body">
                    <h6 class="card-subtitle">Kullanıcı</h6>

                    <div class="row align-items-center gx-2 mb-1">
                        <div class="col-6">
                            <h2 class="card-title text-inherit">92,913</h2>
                        </div>
                        <!-- End Col -->

                        <div class="col-6">
                            <!-- Chart -->
                            <div class="chartjs-custom" style="height: 3rem;">
                                <canvas class="js-chart" data-hs-chartjs-options='{
                              "type": "line",
                              "data": {
                                 "labels": ["1 May","2 May","3 May","4 May","5 May","6 May","7 May","8 May","9 May","10 May","11 May","12 May","13 May","14 May","15 May","16 May","17 May","18 May","19 May","20 May","21 May","22 May","23 May","24 May","25 May","26 May","27 May","28 May","29 May","30 May","31 May"],
                                 "datasets": [{
                                  "data": [21,20,24,15,17,30,30,35,35,35,40,60,12,90,90,85,70,75,43,75,90,22,120,120,90,85,100,92,92,92,92],
                                  "backgroundColor": ["rgba(55, 125, 255, 0)", "rgba(255, 255, 255, 0)"],
                                  "borderColor": "#377dff",
                                  "borderWidth": 2,
                                  "pointRadius": 0,
                                  "pointHoverRadius": 0
                                }]
                              },
                              "options": {
                                 "scales": {
                                   "y": {
                                     "display": false
                                   },
                                   "x": {
                                     "display": false
                                   }
                                 },
                                "hover": {
                                  "mode": "nearest",
                                  "intersect": false
                                },
                                "plugins": {
                                  "tooltip": {
                                    "postfix": "k",
                                    "hasIndicator": true,
                                    "intersect": false
                                  }
                                }
                              }
                            }'></canvas>
                            </div>
                            <!-- End Chart -->
                        </div>
                        <!-- End Col -->
                    </div>
                    <!-- End Row -->

                    <span class="badge bg-soft-success text-body">1252,02%</span>
                    <span class="text-body fs-6 ms-1">from 0,3</span>
                </div>
            </a>
            <!-- End Card -->
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6 mb-3 mb-lg-0">
            <!-- Card -->
            <div class="card h-100">
                <!-- Header -->
                <div class="card-header card-header-content-sm-between">
                    <h4 class="card-header-title mb-2 mb-sm-0">Bağlı Cihaz Topolojisi</h4>


                </div>
                <!-- End Header -->

                <!-- Body -->
                <div class="card-body">
                    <!-- Chart -->



                    <div class="chartjs-custom mx-auto" style="height: 20rem;">


                        <div class="text-center">
                            <div class="spinner-border" role="status">
                                <span class="visually-hidden">Loading...</span>
                            </div>
                            <br />                            
                            <span class="text-secondery">Bağlı Cihaz Listesi Çıkarılıyor</span>
                        </div>


                        <canvas class="js-chart-datalabels" data-hs-chartjs-options='{
                              "type": "bubble",
                              "data": {
                                "datasets": [
                                  {
                                    "label": "Label 1",
                                    "data": [
                                      {"x": 50, "y": 65, "r": 99}
                                    ],
                                    "color": "#fff",
                                    "backgroundColor": "rgba(55, 125, 255, 0.9)",
                                    "borderColor": "transparent"
                                  },
                                  {
                                    "label": "Label 2",
                                    "data": [
                                      {"x": 46, "y": 42, "r": 65}
                                    ],
                                    "color": "#fff",
                                    "backgroundColor": "rgba(100, 0, 214, 0.8)",
                                    "borderColor": "transparent"
                                  },
                                  {
                                    "label": "Label 3",
                                    "data": [
                                      {"x": 48, "y": 15, "r": 38}
                                    ],
                                    "color": "#fff",
                                    "backgroundColor": "#00c9db",
                                    "borderColor": "transparent"
                                  },
                                  {
                                    "label": "Label 3",
                                    "data": [
                                      {"x": 55, "y": 2, "r": 61}
                                    ],
                                    "color": "#fff",
                                    "backgroundColor": "#4338ca",
                                    "borderColor": "transparent"
                                  }
                                ]
                              },
                              "options": {
                                "scales": {
                                  "y": {
                                    "grid": {
                                      "display": false,
                                      "drawBorder": false
                                    },
                                    "ticks": {
                                      "display": false,
                                      "max": 100,
                                      "beginAtZero": true
                                    }
                                  },
                                  "x": {
                                  "grid": {
                                      "display": false,
                                      "drawBorder": false
                                    },
                                    "ticks": {
                                      "display": false,
                                      "max": 100,
                                      "beginAtZero": true
                                    }
                                  }
                                },
                                "plugins": {
                                  "tooltip": false
                                }
                              }
                            }'></canvas>
                    </div>
                    <!-- End Chart -->

                    <div class="row justify-content-center">
                        <div class="col-auto">
                            <span class="legend-indicator bg-primary"></span>Ana Modül
                        </div>
                        <!-- End Col -->

                        <div class="col-auto">
                            <span class="legend-indicator" style="background-color: #7000f2;"></span>Ağ Çıkış Modülü
                        </div>
                        <!-- End Col -->

                        <div class="col-auto">
                            <span class="legend-indicator bg-info"></span>Düğüm Modülü
                        </div>
                        <!-- End Col -->
                    </div>
                    <!-- End Row -->
                </div>
                <!-- End Body -->
            </div>
            <!-- End Card -->
        </div>

        <div class="col-lg-6">
            <!-- Card -->
            <div class="card h-100">
                <!-- Header -->
                <div class="card-header card-header-content-between">
                    <h4 class="card-header-title">SOS Acil Durum Cağrı İstatistikleri</h4>

                    <!-- Dropdown -->
                    <div class="dropdown">
                        <button type="button" class="btn btn-ghost-secondary btn-icon btn-sm rounded-circle" id="reportsOverviewDropdown1" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi-three-dots-vertical"></i>
                        </button>

                        <div class="dropdown-menu dropdown-menu-end mt-1" aria-labelledby="reportsOverviewDropdown1">
                            <span class="dropdown-header">Ayarlar</span>

                           
                            <a class="dropdown-item" href="#">
                                <i class="bi-download dropdown-item-icon"></i>İndir
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="bi-alt dropdown-item-icon"></i>Paylaş
                            </a>

                            <div class="dropdown-divider"></div>

                            <span class="dropdown-header">Geri bildirim</span>

                            <a class="dropdown-item" href="#">
                                <i class="bi-chat-left-dots dropdown-item-icon"></i>Raporla
                            </a>
                        </div>
                    </div>
                    <!-- End Dropdown -->
                </div>
                <!-- End Header -->

                <!-- Body -->
                <div class="card-body">
                    <span class="h1 d-block mb-4">25.021 Acil Durum Çğrısı</span>

                    <!-- Progress -->
                    <div class="progress rounded-pill mb-2">
                        <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" data-bs-toggle="tooltip" data-bs-placement="top" title="Gross value"></div>
                        <div class="progress-bar opacity-50" role="progressbar" style="width: 33%" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" data-bs-toggle="tooltip" data-bs-placement="top" title="Net volume from sales"></div>
                        <div class="progress-bar opacity-25" role="progressbar" style="width: 9%" aria-valuenow="9" aria-valuemin="0" aria-valuemax="100" data-bs-toggle="tooltip" data-bs-placement="top" title="New volume from sales"></div>
                    </div>

                    <div class="d-flex justify-content-between mb-4">
                        <span>0%</span>
                        <span>100%</span>
                    </div>
                    <!-- End Progress -->

                    <!-- Table -->
                    <div class="table-responsive">
                        <table class="table table-lg table-nowrap card-table mb-0">
                            <tr>
                                <th scope="row">
                                    <span class="legend-indicator bg-danger"></span>Kırmızı Kod
                                </th>
                                <td>2348</td>
                                <td>
                                    <span class="badge bg-soft-danger text-danger">+10.1%</span>
                                </td>
                            </tr>

                            <tr>
                                <th scope="row">
                                    <span class="legend-indicator bg-warning opacity-50"></span>Sarı Kod
                                </th>
                                <td>5215</td>
                                <td>
                                    <span class="badge bg-soft-warning text-warning">+20.9%</span>
                                </td>
                            </tr>

                            <tr>
                                <th scope="row">
                                    <span class="legend-indicator bg-primary opacity-50"></span>Mavi Kod
                                </th>
                                <td>3025</td>
                                <td>
                                    <span class="badge bg-soft-primary text-primary">-15,5%</span>
                                </td>
                            </tr>

                            <tr>
                                <th scope="row">
                                    <span class="legend-indicator bg-success opacity-50"></span>Yeşil Kod
                                </th>
                                <td>14,433</td>
                                <td>
                                    <span class="badge bg-soft-success text-success">62,4%</span>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!-- End Table -->
                </div>
                <!-- End Body -->
            </div>
            <!-- End Card -->
        </div>
    </div>


    <script src="/assets/vendor/chartjs-plugin-datalabels/dist/chartjs-plugin-datalabels.min.js"></script>

    <script>
        (function () {
            document.querySelectorAll('.js-chart-datalabels').forEach(item => {
                HSCore.components.HSChartJS.init(item, {
                    plugins: [ChartDataLabels],
                    options: {
                        plugins: {
                            datalabels: {
                                color: function (context) {
                                    var value = context.dataset.data[context.dataIndex];
                                    return value.r < 20 ? context.dataset.backgroundColor : context.dataset.color;
                                },
                                font: function (context) {
                                    var value = context.dataset.data[context.dataIndex],
                                        fontSize = 25;

                                    if (value.r > 50) {
                                        fontSize = 35;
                                    }

                                    if (value.r > 70) {
                                        fontSize = 55;
                                    }

                                    return {
                                        weight: 'lighter',
                                        size: fontSize
                                    };
                                },
                                formatter: function (value) {
                                    return value.r
                                },
                                offset: 2,
                                padding: 0
                            }
                        }
                    },
                })
            })
        })()
    </script>

</asp:Content>
