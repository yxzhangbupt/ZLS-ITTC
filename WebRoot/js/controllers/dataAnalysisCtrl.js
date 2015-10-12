/**
 * Created by Administrator on 2015/9/25.
 */
define(['./module', 'easyui'], function (controllers) {
    'use strict';
    controllers.controller('dataAnalysisCtrl', ['$scope', function ($scope) {
        listDataAnalysis();
        // 日期加上日期控件
        $("#t").datebox({
            required: true,
            missingMessage: '不能为空'
        });
        // 给文本框加上验证器
        $("#PoolID").validatebox({
            required: true
        });

        var tburl = 'searchDataAnalysis.action'; //'searchDataAnalysis.action';

        function listAllDataAnalysis() {
            $('#frmSearch').form('clear');
            dealSearch();
        }

// 加载项目列表
        function listDataAnalysis() {
            $("#dataAnalysisbody").datagrid({
                title: " 数据分析表 ",
                width: "950",
                height: "800",
                url:'./json/dataAnalysis.json',
        		rownumbers : true, // 在最前面显示行号
        		fitColumns : true, // 自动适应列宽
        		pagination : true, // 在底部显示分页工具栏
        		striped : true, // 隔行变色
        		singleSelect : true, // 每次只选中一行
        		loadMsg : '加载项目列表ing……',
        		pageSize : 15, // 指定每页的大小，服务器要加上page属性和total属性
        		remoteSort : true, // 从服务器端排序，默认true
        		pageList : [ 10, 15, 20, 25], // 可以设置每页记录条数的列表，服务器要加上rows属性
        		idField : 'ID', // 主键属性

                columns: [[{field: 'ID', title: '编号', align: 'center', sortable: true, width: 80},
                    {field: 'poolID', title: '水池编号', align: 'center', sortable: true, width: 150},
                    {
                        field: 't', title: '时间', align: 'center', sortable: true, width: 150,
                        formatter: function (value) {
                            //只显示日期，不显示时间
                            return value.substring(0, 10);
                        }
                    },
                    {field: 'inV', title: '总来水量', align: 'center', sortable: true, width: 80},
                    {field: 'outV', title: '出水量', align: 'center', sortable: true, width: 80},
                    {field: 'HXOutV', title: '洗虹吸滤池', align: 'center', sortable: true, width: 80},
                    {field: 'LCOutV', title: '洗V型滤池', align: 'center', sortable: true, width: 80},
                    {field: 'TCOutV', title: '炭池反冲洗', align: 'center', sortable: true, width: 80},
                    {field: 'JJOutV', title: '机加池排泥', align: 'center', sortable: true, width: 80},
                    {
                        field: 'HLInV', title: '回流进水', align: 'center', sortable: true, width: 80,
                        //formatter : function(value) {
                        //	return value.substring(0, 10);
                        //}
                    }, {field: 'storage', title: '蓄水量', align: 'center', width: 80},
                    {
                        field: 'preH', title: '预测水位', align: 'center', sortable: true, width: 80,
                        //只显示两位小数
                        formatter: function (value) {
                            return value.toFixed(2);
                        }
                    }
                ]],

                onDblClickRow: function (rowIndex, rowData) {
                    editDataAnalysis();
                },
                onHeaderContextMenu: function (e, field) {
                    e.preventDefault();
                    if (!cmenu) {
                        createColumnMenu();
                    }
                    cmenu.menu('show', {
                        left: e.pageX,
                        top: e.pageY
                    });
                }
            });
        }

        var cmenu;

        function createColumnMenu() {
            cmenu = $('<div/>').appendTo('body');
            cmenu.menu({
                onClick: function (item) {
                    if (item.iconCls == 'icon-ok') {
                        $('#dataAnalysisbody').datagrid('hideColumn', item.name);
                        cmenu.menu('setIcon', {
                            target: item.target,
                            iconCls: 'icon-empty'
                        });
                    } else {
                        $('#dataAnalysisbody').datagrid('showColumn', item.name);
                        cmenu.menu('setIcon', {
                            target: item.target,
                            iconCls: 'icon-ok'
                        });
                    }
                }
            });
            var fields = $('#dataAnalysisbody').datagrid('getColumnFields');
            for (var i = 0; i < fields.length; i++) {
                var field = fields[i];
                var col = $('#dataAnalysisbody').datagrid('getColumnOption', field);
                cmenu.menu('appendItem', {
                    text: col.title,
                    name: field,
                    iconCls: 'icon-ok'
                });
            }
        }

// 显示编辑窗口
        function showEditForm() {
            $("#tabEdit").dialog({
                modal: true,// 模式窗口
                title: '添加 / 编辑操作',
                iconCls: 'icon-edit',
                buttons: [{
                    text: '确认',
                    handler: function () {
                        // 进行表单字段验证，当全部字段都有效时返回true和validatebox一起使用
                        if ($('#frmEdit').form('validate')) {
                            // 提交到服务器并写入数据库
                            dealSave();
                            // 关闭窗口
                            closeForm();
                        } else {
                            $.messager.alert('验证', '项目信息有误或不完整', 'error');
                        }
                    }
                }, {
                    text: '取消',
                    handler: function () {
                        closeForm();
                    }
                }]
            });
        }

//关闭窗口
        function closeForm() {
            $("#frmEdit").form('clear');
            $('#tabEdit').dialog('close');
        }

        var editRow = undefined;
// 添加的函数
        function addDataAnalysis() {

            // 清空原有的数据
            $('#frmEdit').form('clear');

            // 显示添加对话框
            showEditForm();
        }


// 编辑按钮的操作
        function editDataAnalysis() {
            var dataAnalysis = $('#dataAnalysisbody').datagrid('getSelected');// 得到选中的一行数据
            // 如果没有选中记录
            if (dataAnalysis == null) {
                $.messager.alert('项目', '请先选中要编辑的项目', 'info');
                return;
            }
            $('#frmEdit').form('clear');

            // 填充数据 填充的是json数据
            $("#ID").val(dataAnalysis.ID);
            $("#PoolID").val(dataAnalysis.poolID);
            $("#t").datebox("setValue", dataAnalysis.t);
            $("#InV").val(dataAnalysis.inV);
            $("#OutV").val(dataAnalysis.outV);
            $("#HLInV").val(dataAnalysis.HLInV);
            $("#HXOutV").val(dataAnalysis.HXOutV);
            $("#LCOutV").val(dataAnalysis.LCOutV);
            $("#TCOutV").val(dataAnalysis.TCOutV);
            $("#JJOutV").val(dataAnalysis.JJOutV);
            $("#Storage").numberbox("setValue", dataAnalysis.storage);
            $("#PreH").numberbox("setValue", dataAnalysis.preH);
            // 显示编辑页面
            showEditForm();
        }

// 在增加和更新时点确定按钮的处理函数
        function dealSave() {
            // 表单数据序列化成一个字符串用&拼接
            var params = $("#frmEdit").serialize();
            // 得到id的值，为空串表示添加
            if ($("#ID").val() == "") {
                $.post("addDataAnalysis.action", params, function (result) {
                    if (result.operateSuccess) {
                        $('#dataAnalysisbody').datagrid('reload');// 重新加载
                        $.messager.alert('添加', '添加成功', 'info');
                    } else {
                        $.messager.alert('添加', '添加失败', 'warning');
                    }
                });
            } else {
                // 表示更新
                $.post("updateDataAnalysis.action", params, function (result) {
                    if (result.operateSuccess) {
                        $('#dataAnalysisbody').datagrid('reload');// 重新加载
                        $.messager.alert('更新', '更新成功', 'info');
                    } else {
                        $.messager.alert('更新', '更新失败', 'warning');
                    }
                });
            }
        }

// 删除项目
        function deleteDataAnalysis() {
            var dataAnalysis = $('#dataAnalysisbody').datagrid('getSelected');// 得到选中的一行数据
            // 如果没有选中记录
            if (dataAnalysis == null) {
                $.messager.alert('删除', '请先选中要删除的项目', 'info');
                return;
            }
            $.messager.confirm('确认', '真的要删除选中的记录吗？', function (r) {
                if (r) {
                    var url = "deleteDataAnalysis.action?dataAnalysis.ID=" + dataAnalysis.ID;
                    // 试一下get方法（地址，回调函数）
                    $.get(url, function (result) {
                        if (result.operateSuccess) {
                            $.messager.alert('删除', '选中的项目成功删除！', 'info');
                            // 重新加载
                            $("#dataAnalysisbody").datagrid('reload');
                        } else {
                            $.messager.alert('删除', '删除失败！', 'warning');
                        }
                    });
                }
            });
        }

        function searchDataAnalysis() {
            $("#searchT").val(searchT);
            $("#searchPoolID").val(searchPoolID);
            showSearchForm();
        }

//查询处理
        function dealSearch() {
            // 表单数据序列化成一个字符串用&拼接
            var params = $("#frmSearch").serialize();
            if ($("#searchT").datebox("getValue") != null || $("#searchPoolID").combobox("getValue") != null) {
                $.post("searchDataAnalysis.action", params, function (result) {
                    if (result.total != 0) {

                        $('#dataAnalysisbody').datagrid('reload');// 重新加载

//				$.messager.alert('查询', '查询成功', 'info');
                    } else {
                        $.messager.alert('查询', '查询失败', 'warning');
                    }
                });
            } else {
                $.messager.alert('查询', '请选择。。。', 'warning');
            }
        }

//显示查询窗口
        function showSearchForm() {
            $("#tabSearch").dialog({
                modal: true,// 模式窗口
                title: '查询操作',
                iconCls: 'icon-search',
                buttons: [{
                    text: '确认',
                    handler: function () {
                        // 进行表单字段验证，当全部字段都有效时返回true和validatebox一起使用
                        if ($('#frmSearch').form('validate')) {
                            // 提交到服务器并写入数据库
                            dealSearch();
                            // 关闭窗口
                            closeSearchForm();
                        } else {
                            $.messager.alert('验证', '项目信息有误或不完整', 'error');
                        }
                    }
                }, {
                    text: '取消',
                    handler: function () {
                        closeSearchForm();
                    }
                }]
            });
        }

//关闭窗口
        function closeSearchForm() {
            $("#frmSearch").form('clear');
            $('#tabSearch').dialog('close');
        }


//查询下拉框显示的数据

        var url = "${pageContext.request.contextPath}/listDataAnalysis.action";
        var pidlist = new Array();
        var poollist = new Array();
        $.getJSON(url, function (json) {
            //去除重复项
            var datalist = eval(json).rows;

            for (var i = 0; i < json.total; i++) {
                var row = datalist[i];
                var flag = jQuery.inArray(row.poolID, pidlist);
                if (flag < 0) {
                    poollist.push(row);
                    pidlist.push(row.poolID);
                }

            }
            $('#searchPoolID').combobox({

                data: poollist,
                valueField: 'poolID',
                textField: 'poolID',
                onLoadSuccess: function () {
                    $(this).combobox('setText', '--请选择--');
                }

            });
        })
    }]);
});

