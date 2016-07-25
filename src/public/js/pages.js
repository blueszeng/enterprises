var pages = (function(page) {
    page.showPage = function(count, current, pageUrl) {
        if (current > count) {
            return false;
        }

        var url = arguments[2] ? arguments[2] : page.getPageUrl();
        page.limit = arguments[3] ? arguments[3] : 7;

        var mid = Math.floor(page.limit/2);
        var html = '';
        if (current == 1) {
            html += '<li class="paginate_button previous disabled" tabindex="0" id="datatable1_previous"><a href="javascript:void(0);">First</a></li>';
            html += '<li class="paginate_button disabled" tabindex="0"><a href="javascript:void(0);">Prev</a></li>'
        } else {
            var prev = current-1;
            html += '<li class="paginate_button previous" tabindex="0" id="datatable1_previous"><a href="'+url+1+'">First</a></li>';
            html += '<li class="paginate_button" tabindex="0"><a href="'+url+prev+'">Prev</a></li>'
        }

        var start = 1;
        var end = count;
        if (count > page.limit) {             
            if (current <= mid) {
                start = 1;
                end = page.limit;
            } else if (current > mid && current <= count-mid-1) {
                start = current - mid;
                end =current + mid;
            } else {
                start = count-page.limit+1;
                end = count;
            }         
        }

        for (var i = start; i <= end; i++) {
            if (i == current) {
                html += '<li class="paginate_button active" tabindex="0"><a href="javascript:void(0);">'+i+'</a></li>';
            } else {
                html += '<li class="paginate_button" tabindex="0"><a href="'+url+i+'">'+i+'</a></li>';
            }       
        }

        if (current == count) {
            html += '<li class="paginate_button next disabled" tabindex="0" id="datatable1_next"><a href="javascript:void(0);">Next</a></li>';
            html += '<li class="paginate_button disabled" tabindex="0"><a href="javascript:void(0);">Last</a></li>';
        } else {
            var next = current + 1;
            html += '<li class="paginate_button next" tabindex="0" id="datatable1_next"><a href="'+url+next+'">Next</a></li>';
            html += '<li class="paginate_button" tabindex="0"><a href="'+url+count+'">Last</a></li>';
        }

        $('.pagination').html(html);
    }

    page.getPageUrl = function() {
        var str = window.location.href;
        var reg = /\?/;
        var r = reg.test(str);
        if(r == true) {
            var urlReg = /(page=.*)/;
            if (urlReg.test(str)) {
                return str.replace(/(page=.*)/,'page=');
            } else {
                return str+'&page=';
            }
        } else {
            return str+'?page=';
        }
    }

    return page;
})(pages || {});
