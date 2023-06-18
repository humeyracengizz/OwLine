<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="userdetail.aspx.cs" Inherits="OWLINEbasic.userdetail"  EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
                    console.log("error")

                }
            });
            
        });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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



    </form>
    <!-- End Table -->

</asp:Content>
