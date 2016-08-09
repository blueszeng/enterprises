//ajax 无刷新分页

    var Page = function (options) {
        var defaults = {
            url: null,//
            maxP: 0, //最大页数
            nowP: 1, //当前页数
            showC: 8,//页数多时总共显示的页码个数
            currClass: 'current',//当前页的类
            request: "get",//请求方式
            dataT: "json"//返回数据格式

        };
        var option = $.extend(defaults, options);
        console.log(option)
        this._url = option.url;
        this._nowP = option.nowP;
        this._maxP = option.maxP;
        this._currClass = option.currClass;
        this._showC = option.showC;
        this._request = option.request;
        this._dataT = option.dataT;
	      this._callback = option.callback;
        this._ajaxD = option.ajaxD;
    }
    Page.prototype.checkData = function () {
        if (!!this._url && !!this._maxP)
            return true;
        return false;
    }


//此参数判断上一页，下一页或者直接的页码
    Page.prototype.actionPage = function (pageAction) {
        var _this = this;
        if (!!!pageAction && !_this.checkData())
            return false;
        var flage = false;     //如果已在最后 或第一页  则不进再请求
        switch (pageAction) {
            case "next":
                if (_this._nowP + 1 > _this._maxP)
                    flage = true;
                _this._nowP = _this._nowP + 1 >= _this._maxP ? this._maxP : _this._nowP + 1;
                break;
            case "prev":
                if (_this._nowP - 1 < 1)
                    flage = true;
                _this._nowP = _this._nowP - 1 <= 1 ? 1 : _this._nowP - 1;
                break;
            default:
                pageAction = parseInt(pageAction);
                if (isNaN(pageAction))
                    return false;
                _this._nowP = parseInt(pageAction);
        }
        if (flage)
            return;
        this._ajaxD = Object.assign(this._ajaxD, {page: _this._nowP})
        console.log('sbsbs', this._ajaxD)
        $.ajax({
            type: _this._request,
            url: _this._url,
            data: this._ajaxD,
            dataType: _this._dataT,
            async: false,
            success: function (data) {
                //如需指定在里面完成分页数据的在页面的显示自己写
                _this._dataCur = data;
                console.log('12321', data)
		            _this._callback(data)
            },
            error: function () {
                //服务器传回的数据出错
                throw SyntaxError("error");
            }
        });
        return true;
    }
    Page.prototype.showPage = function () {
        var _this = this;
        if (!_this.checkData())
            return false;
        var str = '<ul>';
        str += "<li><a href='javascript:void(0)' class='prev' onclick='js_Page(\"prev\")'>prev</a></li>"

        var disc = parseInt(_this._showC / 3);  //页数过多  显示每段显示页码多少个
        var dism = disc + _this._showC % 3;     //当页数过多 显示的段数
        var selcss = "";
        for (var i = 1; i <= disc && i <= _this._maxP; i++) {
            if (_this._nowP == i)
                selcss = " class='" + _this._currClass + "' ";
            str += "<li><a href='javascript:void(0)' " + selcss + " onclick='js_Page(" + i + ")' > " + i + " </a></li>"; 
            selcss = "";           
        }
        var hafem = parseInt(dism / 2);   //前后各显示一半  当前页在中
        var sStart = _this._nowP - hafem;   //页数过多第二次显示的开始 一定要显示当面前码
        var sEnd = _this._nowP + hafem;
        if (sStart <= disc || _this._nowP <= disc || sStart >= _this._maxP - disc) {       //当当前页在前面时 则中间开始部分就是前段结束页开始
            sStart = disc + 1;
            sEnd = sStart + disc;
        }
        for (var i = sStart; i <= sEnd && i <= _this._maxP; i++) {
            if (_this._nowP == i)
                selcss = " class='" + _this._currClass + "' ";
            str += "<li><a href='javascript:void(0)'  " + selcss + "  onclick='js_Page(" + i + ")' > " + i + " </a></li>";
            selcss = "";
        }
        var eStart = _this._maxP - disc;
        if (sEnd >= eStart)       //当当前页在中间时 则后段开始部分就是中段结束页开始
            eStart = sEnd + 1;
        for (var i = eStart; i <= _this._maxP; i++) {
            if (_this._nowP == i)
                selcss = " class='" + _this._currClass + "' ";
            str += "<li><a href='javascript:void(0)'  " + selcss + "  onclick='js_Page(" + i + ")' > " + i + " </a></li>";
            selcss = "";
        }


        str += "<li><a href='javascript:void(0)' class='next' onclick='js_Page(\"next\")'>next</a></li></ul>";

        return str;
    }

    window.js_Page = function (page, option,curr) {    
        if (!!js_Page.s_P) {//说明对象存在已经初始化
            if (!isNaN(page) || page == "prev" || page == "next") {
                if (page == js_Page.s_P._nowP)
                    return;
                if (js_Page.s_P.actionPage(page)) {
                    //js_Page.s_P._dataCur 保存数据库传加的数据
                    var data = js_Page.s_P._dataCur;
                }
                $('.pagination').html(js_Page.s_P.showPage());
            }
        } else
            js_Page.s_P = new Page(option);      
    }

////每个页面中
//new js_Page(1,{url:请求URL地址,maxP:总页数});
//$('需要在哪地方插入分页HTML').html(js_Page.s_P.showPage());　　　
