<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="SOSCall.aspx.cs" Inherits="OWLINEbasic.SOSCall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>

        $(document).ready(function () {

            function fetchData() {
                $.ajax({
                    url: 'get_sos.aspx',
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
                                "<td class='table-column-ps-0'>" +
                                "<a class='d-flex align-items-center' href=''>" +
                                "<div class='flex-shrink-0'>" +
                                "<div class='avatar avatar-sm avatar-soft-primary avatar-circle'>" +
                                "<span class='avatar-initials'>" + item.initials + "</span>" +
                                "</div>" +
                                "<div class='flex-grow-1 ms-3'>" +
                                "<h5 class='text-inherit mb-0'>" + item.name + "</h5>" +
                                "</div>" +
                                "</a>" +
                                "</td>" +
                                "<td>" +
                                "<span class='legend-indicator bg-secondery'></span>" + item.status +
                                "</td>" +
                                "<td>" + item.assignment + "</td>" +
                                "<td>" + item.timestamp + "</td>" +
                                "<td><a href='/userdetail?userid=" + item.value + "'><span class='text-primary'>İletişime Geç</span></a></td>" +
                                "<td><a target='_blank'' href='https://www.google.com.tr/maps/place/" + item.location + "'><span class='text-primary'>Konumu Aç</span></a></td>" +
                                "</tr>";
                            
                            tbody.append(row);
                        });
                    },
                    error: function () {

                    }
                });
            }
            setInterval(fetchData, 750);
        });
    </script>


    <script src="/assets/vendor/datatables/media/js/jquery.dataTables.min.js"></script>
    <script>
        (function () {
            // INITIALIZATION OF DATATABLES
            // =======================================================
            HSCore.components.HSDatatables.init('.js-datatable')
        })()
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="table-responsive datatable-custom">
        <table id="datatable" class="table table-borderless table-thead-bordered table-nowrap table-align-middle card-table" data-hs-datatables-options='{
                   "columnDefs": [{
                      "targets": [0, 1, 4],
                      "orderable": false
                    }],
                   "order": [],
                   "info": {
                     "totalQty": "#datatableWithPaginationInfoTotalQty"
                   },
                   "search": "#datatableSearch",
                   "entries": "#datatableEntries",
                   "pageLength": 8,
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
                    <th class="table-column-ps-0">Adı Soyadı</th>
                    <th>Durumu</th>
                    <th>Müdehale Ekibi</th>
                    <th>Çağrı Zamanı</th>
                    <th>İletişime Geç</th>
                    <th>Çağrı Konumu</th>
                </tr>
            </thead>

            <tbody>
            </tbody>
        </table>
    </div>



</asp:Content>
