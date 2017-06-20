function Clock() {
    var date = new Date();
    this.year = date.getFullYear();
    this.month = date.getMonth() + 1;
    this.date = date.getDate();
    this.day = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六")[date.getDay()];
    this.hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
    this.minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
    this.second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
     
    this.toString = function() {
    	return  this.year  ;
        //return "现在是:" + this.year + "年" + this.month + "月" + this.date + "日 " + this.hour + ":" + this.minute + ":" + this.second + " " + this.day; 
    };
         
    this.toSimpleDate = function() {
        return this.year + "-" + this.month + "-" + this.date;
    };
         
    this.toDetailDate = function() {
        return this.year + "-" + this.month + "-" + this.date + " " + this.hour + ":" + this.minute + ":" + this.second;
    };
         
    this.display = function(ele) {
        var clock = new Clock();
        ele.innerHTML = clock.toString();
        window.setTimeout(function() {clock.display(ele);}, 1000);
    };
}


function Clock_next() {
    var date = new Date();
    this.year = date.getFullYear()+1;
    this.month = date.getMonth() + 1;
    this.date = date.getDate();
    this.day = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六")[date.getDay()];
    this.hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
    this.minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
    this.second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
     
    this.toString = function() {
    	return  this.year  ;
        //return "现在是:" + this.year + "年" + this.month + "月" + this.date + "日 " + this.hour + ":" + this.minute + ":" + this.second + " " + this.day; 
    };
         
    this.toSimpleDate = function() {
        return this.year + "-" + this.month + "-" + this.date;
    };
         
    this.toDetailDate = function() {
        return this.year + "-" + this.month + "-" + this.date + " " + this.hour + ":" + this.minute + ":" + this.second;
    };
         
    this.display = function(ele) {
        var clock = new Clock_next();
        ele.innerHTML = clock.toString();
        window.setTimeout(function() {clock.display(ele);}, 1000);
    };
}


function Clock_next_after() {
    var date = new Date();
    this.year = date.getFullYear()+2;
    this.month = date.getMonth() + 1;
    this.date = date.getDate();
    this.day = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六")[date.getDay()];
    this.hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
    this.minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
    this.second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
     
    this.toString = function() {
    	return  this.year ;
        //return "现在是:" + this.year + "年" + this.month + "月" + this.date + "日 " + this.hour + ":" + this.minute + ":" + this.second + " " + this.day; 
    };
         
    this.toSimpleDate = function() {
        return this.year + "-" + this.month + "-" + this.date;
    };
         
    this.toDetailDate = function() {
        return this.year + "-" + this.month + "-" + this.date + " " + this.hour + ":" + this.minute + ":" + this.second;
    };
         
    this.display = function(ele) {
        var clock = new Clock_next_after();
        ele.innerHTML = clock.toString();
        window.setTimeout(function() {clock.display(ele);}, 1000);
    };
}


function Clock_next_after_next() {
    var date = new Date();
    this.year = date.getFullYear()+3;
    this.month = date.getMonth() + 1;
    this.date = date.getDate();
    this.day = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六")[date.getDay()];
    this.hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
    this.minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
    this.second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
     
    this.toString = function() {
    	return  this.year ;
        //return "现在是:" + this.year + "年" + this.month + "月" + this.date + "日 " + this.hour + ":" + this.minute + ":" + this.second + " " + this.day; 
    };
         
    this.toSimpleDate = function() {
        return this.year + "-" + this.month + "-" + this.date;
    };
         
    this.toDetailDate = function() {
        return this.year + "-" + this.month + "-" + this.date + " " + this.hour + ":" + this.minute + ":" + this.second;
    };
         
    this.display = function(ele) {
        var clock = new Clock_next_after_next();
        ele.innerHTML = clock.toString();
        window.setTimeout(function() {clock.display(ele);}, 1000);
    };
}

function Clock_xingxiang() {
    var date = new Date();
    this.year = date.getFullYear();
    this.month = date.getMonth() + 1;
    this.date = date.getDate();
    this.day = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六")[date.getDay()];
    this.hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
    this.minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
    this.second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
     
    this.toString = function() {
    	return  this.year +"年主要形象进度或前期工作进度" ;
        //return "现在是:" + this.year + "年" + this.month + "月" + this.date + "日 " + this.hour + ":" + this.minute + ":" + this.second + " " + this.day; 
    };
         
    this.toSimpleDate = function() {
        return this.year + "-" + this.month + "-" + this.date;
    };
         
    this.toDetailDate = function() {
        return this.year + "-" + this.month + "-" + this.date + " " + this.hour + ":" + this.minute + ":" + this.second;
    };
         
    this.display = function(ele) {
        var clock = new Clock_xingxiang();
        ele.innerHTML = clock.toString();
        window.setTimeout(function() {clock.display(ele);}, 1000);
    };
}


function Clock_jindu() {
    var date = new Date();
    this.year = date.getFullYear();
    this.month = date.getMonth() + 1;
    this.date = date.getDate();
    this.day = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六")[date.getDay()];
    this.hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
    this.minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
    this.second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
     
    this.toString = function() {
    	return  this.year +"年投资进度" ;
        //return "现在是:" + this.year + "年" + this.month + "月" + this.date + "日 " + this.hour + ":" + this.minute + ":" + this.second + " " + this.day; 
    };
         
    this.toSimpleDate = function() {
        return this.year + "-" + this.month + "-" + this.date;
    };
         
    this.toDetailDate = function() {
        return this.year + "-" + this.month + "-" + this.date + " " + this.hour + ":" + this.minute + ":" + this.second;
    };
         
    this.display = function(ele) {
        var clock = new Clock_jindu();
        ele.innerHTML = clock.toString();
        window.setTimeout(function() {clock.display(ele);}, 1000);
    };
    
}


