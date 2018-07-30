

$('hotel-table').bootstrap-table ({
    url:"",
    cache: false,
    striped: true,
    pagination: false,
    pageList: [20, 50],
    pageSize: 10,
    pageNumber: 1,
    // sidePagination: 'server',
    queryParams: function (params) { // 请求服务器数据时发送的参数，可以在这里添加额外的查询参数，返回false则终止请求
        return {
            pageSize: params.limit, // 每页要显示的数据条数
            offset: params.offset, // 每页显示数据的开始行号
            sort: params.sort, // 要排序的字段
            sortOrder: params.order, // 排序规则
            dataId: $("#dataId").val() // 额外添加的参数
        }
    },
    sortName: 'id', // 要排序的字段
    sortOrder: 'desc', // 排序规则
    columns: [
        {
            field: 'Code',
            title: '编号',
            align: 'center',
            valign: 'middle',
        }, {
            field: 'Name', // 返回json数据中的name
            title: '品名', // 表格表头显示文字
            align: 'center', // 左右居中
            valign: 'middle' // 上下居中
        }, {
            field: 'Room',
            title: '房型',
            align: 'center',
            valign: 'middle'
        }, {
            field: 'Bed',
            title: '床型',
            align: 'center',
            valign: 'middle',
        }, {
            field: 'Person',
            title: '人数',
            align: 'center',
            valign: 'middle',
        }, {
            field: 'Equipment',
            title: '设施',
            align: 'center',
            valign: 'middle',
        }, {
            field: 'Price',
            title: '价格',
            align: 'center',
            valign: 'middle',
        }, {
            title: '操作',
            align: 'center',
            valign: 'middle',
            width: 160, // 定义列的宽度，单位为像素px
            formatter: function (value, row, index) {
                // return '<button class="btn btn-primary btn-sm" onclick 
                return '<button class="btn btn-primary btn-sm" onclick="del(\'' + row.stdId + '\')">删除</button>';
            }
        }
    ],
    onLoadSuccess: function(){  //加载成功时执行
        console.info("加载成功");
    },
    onLoadError: function(){  //加载失败时执行
        console.info("加载数据失败");
    }

})