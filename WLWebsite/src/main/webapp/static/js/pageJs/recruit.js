//生成用户数据
$('#mytab').bootstrapTable({
    method: 'post',
    contentType: "application/x-www-form-urlencoded",//必须要有！！！！
    url: "/recruit/pager_criteria",//要请求数据的文件路径
    toolbar: '#toolbar',//指定工具栏
    striped: true, //是否显示行间隔色
    dataField: "res",
    sortable: true, //是否启用排序 sortOrder: "ID asc",
    sortOrder: "ID asc",
    pagination: true,//是否分页
    queryParamsType: 'limit',//查询参数组织方式
    queryParams: queryParams,//请求服务器时所传的参数
    sidePagination: 'server',//指定服务器端分页
    pageNumber: 1, //初始化加载第一页，默认第一页
    pageSize: 10,//单页记录数
    pageList: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100],//分页步进值
    showRefresh: true,//刷新按钮
    showColumns: true,
    clickToSelect: true,//是否启用点击选中行
    toolbarAlign: 'right',//工具栏对齐方式
    buttonsAlign: 'right',//按钮对齐方式
    search: false,
    uniqueId: "rid",                     //每一行的唯一标识，一般为主键列
    showExport: true,
    exportDataType: 'all',
    columns: [
        {
            radio: true,
            width: 25,
            align: 'center',
            valign: 'middle'
        },
        {
            title: '职位图片',
            field: 'img',
            align: 'center',
            sortable: true,
            formatter: function (value) {
                return  "<img style='width: 100px;height:50px' src='http://localhost:8080/"+value+"'>";
            }
        }
        ,
        {
            title: '职位名称',
            field: 'title',
            align: 'center',
            sortable: true
        }
        ,
        {
            title: '职位要求',
            field: 'content',
            align: 'center',
            sortable: true
        }
        ,
        {
            title: '操作',
            align: 'center',
            field: '',
            formatter: function (value, row, index) {
                var e = '<a title="编辑" href="javascript:void(0);" id="leave"  data-toggle="modal" data-id="\'' + row.rid + '\'" data-target="#homeUpdate" onclick="return edit(\'' + row.rid + '\')"><i class="glyphicon glyphicon-pencil" alt="修改" style="color:green"></i></a> ';
                var d = '<a title="删除" href="javascript:void(0);" onclick="del(' + row.rid + ')"><i class="glyphicon glyphicon-trash" alt="删除" style="color:red"></i></a> ';
                return e + d ;
            }
        }
    ],
    locale: 'zh-CN',//中文支持,
    responseHandler: function (res) {
        if (res) {
            return {
                "res": res.rows,
                "total": res.total
            };
        } else {
            return {
                "rows": [],
                "total": 0
            };
        }
    }
});

//请求服务数据时所传参数
function queryParams(params) {
    var title = "";
    $(".search input").each(function () {
        title = $(this).val();
    });
    return {
        //每页多少条数据
        pageSize: this.pageSize,
        //请求第几页
        pageIndex: this.pageNumber,
        searchVal: title
    }
}

//查询按钮事件
$('#search_btn').click(function () {
    var title = $('#title').val();
    var content = $('#content').val();
    $('#mytab').bootstrapTable('refresh', {url: '/recruit/pager_criteria',
        query:{title:title,content:content}});
});

function refush() {
    $('#mytab').bootstrapTable('refresh', {url: '/recruit/pager_criteria'});
}

//单个删除
function del(rid) {
    // if (state == 0) {
    //     layer.msg("删除失败，已经激活的不允许删除!", {icon: 2, time: 3000});
    //     return;
    // }
    layer.confirm('确认要删除吗？', function (index) {
        $.ajax({
            type: 'POST',
            url: '/recruit/remove/'+ rid,
            dataType: 'json',
            success: function (data) {
                if (data.result === 'ok') {
                    layer.msg(data.message, {icon: 1, time: 3000});
                } else {
                    layer.msg(data.message, {icon: 2, time: 3000});
                }
                refush();
            },
            error: function (data) {
                console.log(data.msg);
            }
        });
    });
}

//编辑
function edit(rid) {
    $.post("/recruit/find/"+ rid,
        function (data) {
            $("#updateForm").autofill(data);
            $("#demo").attr("src","/"+data.img);
        },
        "json"
    );
}

function update() {
    var row = $.map($("#mytab").bootstrapTable('getSelections'), function (row) {
        return row.rid;
    });
    if (row === "") {
        layer.msg('修改失败，请勾选数据!', {
            icon: 2,
            time: 3000
        });
        return ;

    }else {
        $.post("/sildeshow/find/" + $("#rid").val(),
            function (data) {
                if (data === "ok") {
                    $("#updateForm").autofill(data);
                } else {
                    layer.msg(data.message, {icon: 2, time: 3000});
                }

            },
            "json"
        );
    }
}


//新增
$('#recruitAdd').bootstrapValidator({
    message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
        title: {
            message: '职位名称验证失败',
            validators: {
                notEmpty: {
                    message: '请输入职位名称'
                },
                stringLength: {
                    min: 1,
                    max: 20,
                    message: '职位名称长度必须在1到20之间'
                }
            }
        },
        img: {
            message: '图片验证失败',
            validators: {
                notEmpty: {
                    message: '请上传图片'
                }
            }
        }
    }
}).on('success.form.bv', function(e) {//点击提交之后
    e.preventDefault();
    var $form = $(e.target);
    var bv = $form.data('bootstrapValidator');
    $.post(
        "/recruit/save",
        $('#recruitAdd').serialize(),
        function (data) {
            if (data.result === "ok") {
                layer.msg(data.message, {icon: 1, time: 3000});
            } else {
                layer.msg(data.message, {icon: 2, time: 3000});
            }
            $("#recruitAdd").data('bootstrapValidator').resetForm();
            $("#demo").attr("src",'');
            $("#picx").html('');
            refush();
        },
        "json"
    );
});
//修改
$('#updateForm').bootstrapValidator({
    // message: 'This value is not valid',
    // feedbackIcons: {
    //     valid: 'glyphicon glyphicon-ok',
    //     invalid: 'glyphicon glyphicon-remove',
    //     validating: 'glyphicon glyphicon-refresh'
    // },
    // fields: {
    //     pic1: {
    //         message: '图片验证失败',
    //         validators: {
    //             notEmpty: {
    //                 message: '请上传图片'
    //             }
    //         }
    //     },
    //     pic2: {
    //         message: '图片验证失败',
    //         validators: {
    //             notEmpty: {
    //                 message: '请上传图片'
    //             }
    //         }
    //     },
    //     pic3: {
    //         message: '图片验证失败',
    //         validators: {
    //             notEmpty: {
    //                 message: '请上传图片'
    //             }
    //         }
    //     }
    // }
}).on('success.form.bv', function(e) {//点击提交之后
    e.preventDefault();
    var $form = $(e.target);
    var bv = $form.data('bootstrapValidator');
    $.post(
        "/recruit/update",
        $('#updateForm').serialize(),
        function (data) {
            if (data.result === "ok") {
                layer.msg(data.message, {icon: 1, time: 3000});
            } else {
                layer.msg(data.message, {icon: 2, time: 3000});
            }
            $("#homeUpdate").modal('hide');
            $("#img").val("");
            refush();
        },
        "json"
    );
});

