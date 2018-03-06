var root_dir = '';

var vendor_dir = root_dir + '/vendor';
var lib_dir = root_dir + '/lib';
var module_dir = root_dir + '/module';
var admin_dir = root_dir + '/admin';

require.config({
    paths: {
        /* 项目module */
        validateModule: lib_dir + '/validate.module',
        cityPickerModule: lib_dir + '/city-picker/city-picker.module',
        cityData: lib_dir + '/city-picker/city-data.min',
        alertify: lib_dir + '/alertify.module',
        util: lib_dir + '/util.module',
        uploadModule: lib_dir + '/upload.module',
        paginatorModule: lib_dir + '/paginator.module',

        commonModule: module_dir + '/common.module',
        configModule: module_dir + '/config.module',
        accountModule: module_dir + '/account.module',
        userModule: module_dir + '/user.module',
        newsModule: module_dir + '/news.module',

        vendorCommon: vendor_dir + '/vendor.common',
        jquery: vendor_dir + '/jquery/jquery.1.11.1.min',
        jqueryMobile: vendor_dir + '/jquery/jquery.mobile.custom.min',
        placeholder: vendor_dir + '/jquery/jquery.placeholder.min',
        bootbox: vendor_dir + '/jquery/jquery.bootbox.min',
        toastr: vendor_dir + '/jquery/jquery.toastr.min',
        raty: vendor_dir + '/jquery/jquery.raty.min',
        hotkey: vendor_dir + '/jquery/jquery.hotkeys',
        /* bootstrap相关 */
        bootstrap: vendor_dir + '/bootstrap/bootstrap.min',
        datetimepicker: vendor_dir + '/bootstrap/datetimepicker/bootstrap-datetimepicker.min',
        tag: vendor_dir + '/bootstrap/bootstrap-tag.min',
        wysiwyg: vendor_dir + '/bootstrap/bootstrap-wysiwyg.min',
        wizard: vendor_dir + '/jquery/jquery.fuelux.wizard.min',
        /* avalon相关 */
        avalon: vendor_dir + '/avalon/avalon.shim.min',
        avalonConfig: root_dir + '/avalon.config',
        /* 独立工具库 */
        md5: vendor_dir + '/md5.min',
        spin: vendor_dir + '/spin.min',
        ace: vendor_dir + '/ace/ace.min',
        webUploader: vendor_dir + '/webuploader.min',
        xdomain: vendor_dir + '/xdomain.all.min',
        ueditor: vendor_dir + '/ueditor/ueditor.all.min',
        ueditorConfig: vendor_dir + '/ueditor/ueditor.config',

        /* 页面主函数 */
        pageCommon: root_dir + '/page.common',
        indexIndexPage: root_dir + '/index/index/page',
        accountLoginPage: admin_dir + '/account/login/page',
        userIndexPage: admin_dir + '/user/index/page',
        newsIndexPage: admin_dir + '/news/index/page',
        newsAddPage: admin_dir + '/news/add/page',

        /* ViewModel */
        vmLogin: admin_dir + '/account/login/account-login.viewmodel',
        vmUserManage: admin_dir + '/user/index/user.viewmodel',
        vmUserAdd: admin_dir + '/user/index/add-user.viewmodel',
        vmNewsManage: admin_dir + '/news/index/news.viewmodel',
        vmNewsAdd: admin_dir + '/news/add/add-news.viewmodel',
    },
    shim: {
        bootstrap: {
            deps: ['jquery'],
            exports: 'jQuery'
        },
        avalon: {
            exports: 'avalon'
        },
        raty: {
            exports: 'jQuery'
        },
        datetimepicker: {
            deps: ['jquery'],
            exports: 'jQuery'
        },
        datetimepicker_zhCN: {
            deps: ['jquery', 'datetimepicker'],
            exports: 'jQuery'
        },
        wysiwyg: {
            deps: ['hotkey'],
            exports: 'jQuery'
        },
        ueditor: {
            deps: ['ueditorConfig']
        },
        ace: {
            deps: ['jquery'],
            exports: 'jQuery'
        }
    }
});