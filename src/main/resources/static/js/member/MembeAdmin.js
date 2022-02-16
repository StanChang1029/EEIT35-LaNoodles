function updateHtml(name, email, phone, birthday) {
    let html = '';
    html += '名稱:<input type="text" class="swal2-input" id="name" value="' + name + '"><br>'
    html += '信箱:<input type="text" class="swal2-input" id="email" value="' + email + '"><br>'
    html += '電話:<input type="text" class="swal2-input" id="phone" value="' + phone + '"><br>'
    html += '生日:<input type="date" class="swal2-input" id="birthday" value="' + birthday + '"><br>'
    return html;
}

var columns = [ //欄位設定
    {
        data: 'memberId',
        title: '會員編號',
        width: '50px',
    }, {
        data: 'memberAccount',
        title: '會員帳號',
    }, {
        data: 'memberProfile',
        title: '會員名稱',
        render: function(data, type, row) {
            return data.memberName;
        }
    }, {
        data: 'memberProfile',
        title: '會員信箱',
        render: function(data, type, row) {
            return data.memberEmail;
        }
    }, {
        data: 'memberProfile',
        title: '會員電話',
        render: function(data, type, row) {
            return data.memberPhone;
        }
    }, {
        data: 'memberProfile',
        title: '會員生日',
        render: function(data, type, row) {
            return data.memberBirthday;
        }
    }, {
        data: 'memberType',
        title: '會員權限',
        width: '10%',
    }, {
        data: null,
        title: '功能列表',
        render: function(data, type, row) {
            return '<button type="button" class="btn btn-warning btn-sm">編輯個人資料</button> ' +
                '<button type="button" class="btn btn-danger btn-sm">刪除</button>'
        }
    }
];

var columnDefs = [{
    targets: "_all",
    // width: "30%", // 設定寬度
    className: "text-center", // 新增class
    createdCell: function(td, cellData, rowData, row, col) { //操作dom元素
    },
}];

$("#demo").DataTable({
    // "data": members,
    "ajax": {
        "type": "GET",
        "url": "/member",
        "dataSrc": "",
        // "dataSrc": function(json) {
        //     //Make your callback here.
        //     alert("Done!");
        //     return json.data;
        // }
    },
    /*設定屬性(預設功能)區塊*/
    // "searching": true, // 預設為true 搜尋功能，若要開啟不用特別設定
    // "paging": true, // 預設為true 分頁功能，若要開啟不用特別設定
    "ordering": false, // 預設為true 排序功能，若要開啟不用特別設定
    // "sPaginationType": "full_numbers", // 分頁樣式 預設為"full_numbers"，若需其他樣式才需設定
    // "lengthMenu": [
    //     [10, 25, 50, -1],
    //     [10, 25, 50, "All"]
    // ], //顯示筆數設定 預設為[10, 25, 50, 100]
    // "pageLength": '10', // 預設為'10'，若需更改初始每頁顯示筆數，才需設定
    // "processing": true, // 預設為false 是否要顯示當前資料處理狀態資訊
    // "serverSide": false, // 預設為false 是否透過Server端處理分頁…等
    // "stateSave": true, // 預設為false 在頁面刷新時，是否要保存當前表格資料與狀態
    // "destroy": true, // 預設為false 是否銷毀當前暫存資料
    // "info": true, // 預設為true　是否要顯示"目前有 x  筆資料"
    // "autoWidth": false, // 預設為true　設置是否要自動調整表格寬度(false代表不要自適應)　　　　
    // "scrollCollapse": true, // 預設為false 是否開始滾軸功能控制X、Y軸
    // "scrollY": "200px", // 若有設置為Y軸(垂直)最大高度
    // "dom": 'lrtip', // 設置搜尋div、頁碼div...等基本位置/外觀..等，詳細可看官網
    // 設定資料來源區塊(data or ajax….等),
    // 設定資料欄位區塊(columns),
    "columns": columns,
    "columnDefs": columnDefs,
    // 設定語言區塊(language),
    // 設定欄位元素定義區塊(columnDefs),
    // 設定列元素區塊(rowCallback)… 等
})

var table = $('#demo').DataTable();

$("#demo").on("click", ".btn-warning", function() {

    cIndex = table.row($(this).parents('tr')).index()
    cData = table.row(cIndex).data()

    Swal.fire({
        html: updateHtml(
            cData.memberProfile.memberName,
            cData.memberProfile.memberEmail,
            cData.memberProfile.memberPhone,
            cData.memberProfile.memberBirthday
        ),
        showCancelButton: true,
        confirmButtonText: '確認', //搭配isConfirmed
        cancelButtonText: '取消',
        preConfirm: () => {
            const name = Swal.getPopup().querySelector('#name').value;
            const email = Swal.getPopup().querySelector('#email').value;
            const phone = Swal.getPopup().querySelector('#phone').value;
            const birthday = Swal.getPopup().querySelector('#birthday').value;
            return {
                name: name,
                email: email,
                phone: phone,
                birthday: birthday
            }
        }
    }).then((result) => {
        // console.log(result.value);
        if (result.isConfirmed) {
            cData.memberProfile.memberName = result.value.name;
            cData.memberProfile.memberEmail = result.value.email;
            cData.memberProfile.memberPhone = result.value.phone;
            cData.memberProfile.memberBirthday = result.value.birthday;

            $.ajax({
                type: 'put',
                url: '/memberprofile',
                contentType: "application/json",
                data: JSON.stringify(cData.memberProfile),
                success: function(data) {
                    //更新資料到 DataTable
                    table.row(cIndex).data(cData).draw();

                    //提醒
                    Swal.fire({
                        icon: 'success',
                        title: '更新成功',
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 2000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.addEventListener('mouseenter', Swal.stopTimer)
                            toast.addEventListener('mouseleave', Swal.resumeTimer)
                        },
                    });
                }
            });
        }
    });
});


//練習使用on繫結網頁上刪除按鈕，完成刪除動作
//觸發.btn-danger，因為bubbling 程式執行會(往上升)偵測是否有繫結
//碰到#idtable，jQuery重新繫結
$("#demo").on("click", ".btn-danger", function() {

    cRow = $(this).parents('tr');
    cIndex = table.row(cRow).index()
    cData = table.row(cIndex).data();

    id = cData.memberId;
    Swal.fire({
        icon: 'warning',
        title: '確定要刪除嗎',
        showCancelButton: true,
        confirmButtonText: '確認', //搭配isConfirmed
        cancelButtonText: '取消',
    }).then((result) => {
        if (result.isConfirmed) {
            //ajax
            $.ajax({
                type: 'delete',
                url: '/member/' + id,
                // contentType: "application/json",
                // data: json,
                success: function(data) {
                    //刪除
                    // console.log(id);
                    table.row(cRow)
                        .remove()
                        .draw();

                    // $(this).parents('tr').remove();
                    //提醒
                    Swal.fire({
                        icon: 'success',
                        title: '刪除成功',
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 2000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.addEventListener('mouseenter', Swal.stopTimer)
                            toast.addEventListener('mouseleave', Swal.resumeTimer)
                        },
                    });
					//showChart();
					updateChart();
                }
            });
        }
    })
});

function addHtml() {
    let html = '';
    // html += 'ID:<input type="text" class="swal2-input" id="uid" placeholder="uid"><br>'
    html += '帳號:<input type="text" class="swal2-input" id="memberAccount" placeholder="請輸入"><br>'
    html += '密碼:<input type="password" class="swal2-input" id="memberPassword" placeholder="請輸入"><br>'
    html += '密碼確認:<input type="password" class="swal2-input" id="checkPassword" placeholder="請輸入"><br>'
    html += '<input type="hidden" class="swal2-input" id="memberType" value="0"><br>'
    html += '<hr>'
    html += '姓名:<input type="text" class="swal2-input" id="memberName" placeholder="請輸入"><br>'
    html += '電子信箱:<input type="text" class="swal2-input" id="memberEmail" placeholder="請輸入"><br>'
    html += '電話:<input type="text" class="swal2-input" id="memberPhone" placeholder="請輸入"><br>'
    html += '生日:<input type="date" class="swal2-input" id="memberBirthday" placeholder="請輸入"><br><br>'
    html += '<button class="btn btn-primary" type="button" id="keyInAdmin" onclick="keyIn()" >一鍵管理員</button>'
    return html;
}

$('#addAdmin').click(function() {
    Swal.fire({
        html: addHtml(),
        showCancelButton: true,
        confirmButtonText: '確認', //搭配isConfirmed
        cancelButtonText: '取消',
        preConfirm: () => {
            const memberAccount = Swal.getPopup().querySelector('#memberAccount').value;
            const memberPassword = Swal.getPopup().querySelector('#memberPassword').value;
            const memberType = Swal.getPopup().querySelector('#memberType').value;
            const memberName = Swal.getPopup().querySelector('#memberName').value;
            const memberEmail = Swal.getPopup().querySelector('#memberEmail').value;
            const memberPhone = Swal.getPopup().querySelector('#memberPhone').value;
            const memberBirthday = Swal.getPopup().querySelector('#memberBirthday').value;
            return {
                memberAccount: memberAccount,
                memberPassword: memberPassword,
                memberType: memberType,
                memberProfile: {
					memberAccount: memberAccount,
                    memberName: memberName,
                    memberEmail: memberEmail,
                    memberPhone: memberPhone,
                    memberBirthday: memberBirthday
                }
            }
        }
    }).then((result) => {
        // console.log(result.value);
        if (result.isConfirmed) {
            console.log(result.value);
            $.ajax({
                type: 'post',
                url: '/member/admin',
                contentType: "application/json",
                data: JSON.stringify(result.value),
                success: function(data) {
                    //更新資料到 DataTable
                    // table.row(cIndex).data(cData).draw();
                    table.row.add(data).draw().node();
                    //提醒
                    Swal.fire({
                        icon: 'success',
                        title: '新增成功',
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 2000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.addEventListener('mouseenter', Swal.stopTimer)
                            toast.addEventListener('mouseleave', Swal.resumeTimer)
                        },
                    });
					//showChart();
					updateChart();
                }
            });
        }
    })
});

function keyIn() {
    // console.log("admin");
    // Swal.getPopup().querySelector('#memberAccount').value = "admin2";
    // console.log(Swal.getPopup().querySelector('#memberAccount').value);
    $("input#memberAccount").val("admin2");
    $("input#memberPassword").val("admin2");
    $("input#checkPassword").val("admin2");
    $("input#memberName").val("管理員2號");
    $("input#memberEmail").val("admin2@admin.com");
    $("input#memberPhone").val("0912-345-678");
    $("input#memberBirthday").val("2022-02-18");
};


var ctx = document.getElementById('myChart').getContext('2d');
var myChart;
function showPieChart(data) {
    myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ["管理員", "一般會員"],
            datasets: [{
                //預設資料
                data: data,
                backgroundColor: [
                    //資料顏色
                    "#FF0000",
                    "#2894FF"
                ],
            }],
        },
        plugins: [ChartDataLabels],
        options: {
            plugins: {
                title: {
                    display: true,
                    text: '會員分布圖',
                    position: 'bottom',
                    font: {
                        size: 25
                    }
                },
                legend: {
                    display: true,
                    position: 'left',
                    algin: 'start',
                    labels: {
                        font: {
                            size: 18
                        }
                    }
                },
                datalabels: {
                    formatter: (value, ctx) => {
                        let sum = 0;
                        let dataArr = ctx.chart.data.datasets[0].data;
                        dataArr.map(data => {
                            sum += data;
                        });
                        // let percentage = (value * 100 / sum).toFixed(2) + "%"; //百分比
                        // let percentage = (value * 100 / sum) + "%"; //百分比
                        let percentage = value;
                        return percentage;
                    },
                    color: '#fff',
                    font: {
                        size: 18
                    }
                }
            },
        }
    })
};

function showChart(){
    $.ajax({
        type: 'get',
        url: '/membertypenum',
        success: function(data) {
            showPieChart(data);
        }
    });
}

function updateChart(){
    $.ajax({
        type: 'get',
        url: '/membertypenum',
        success: function(data) {
			console.log(myChart.data.datasets[0].data);
			myChart.data.datasets[0].data = data;
			myChart.update();
        }
    });
}

$(document).ready(function() {
    // data = [10, 90];
    // showPieChart(data);
     showChart();
});