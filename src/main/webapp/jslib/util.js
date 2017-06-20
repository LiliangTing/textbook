var pathName=window.document.location.pathname; 
/**
 * 项目根目录
 */
var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);

/*输出消息开始*/
function confirmShow(title,msg){
	$.messager.confirm(title, msg, function(r){
		return r;
	});
}
/**
 * easyUi输出消息框
 * @param title  消息头
 * @param msg    消息内容
 * @returns      返回假
 */
function show(title,msg) {	
	return show(title,msg,false);
}
/**
 * easyUi输出消息框，左下角弹出
 * @param title  消息头
 * @param msg    消息内容
 * @param isTrue 返回值
 * @returns
 */
function show(title,msg,isTrue) {
	$.messager.show({
		title : title,
		msg : msg,
		timeout : 3000,
		showType : 'show',
		style:{
			left:0,
            right:'',
            top:'',
            bottom:-document.body.scrollTop-document.documentElement.scrollTop
		}
	});
	return isTrue;
}
/**
 * easyUi输出消息框，中间弹出
 * @param title  消息头
 * @param msg    消息内容
 * @param isTrue 返回值
 * @returns
 */
function showCenter(title,msg,isTrue) {
	 $.messager.show({
         title : title,
         msg : msg,
         timeout : 3000,
         showType : 'slide',
         style:{
             right:'',
             top:document.body.scrollTop+document.documentElement.scrollTop,
             bottom:''
         }
     });
	 return isTrue;
}
/*输出消息结束*/

/*input输入框开始*/
/**
 * 根据组件name判断组件内容是否为空，空则返回true，不空返回false
 * @param name
 * @returns
 */
function reqN(name) {
	return req($("[name='" + name + "']"));
}
/**
 * 根据组件id判断组件内容是否为空，空则返回true，不空返回false
 * @param id
 * @returns
 */
function reqI(id) {
	return req($("#" + id));
}
/**
 * 根据组件元素判断组件内容是否为空，空则返回true，不空返回false
 * @param ass
 * @returns
 */
function req(ass) {
	return $.trim(ass.val()).length > 0 ? false : returnAndFocus(ass);
}
/*input输入框结束*/

/*radio开始*/
/**
 * 根据radio组件name判断组件是否选中，没选中返回true，选中返回false
 * @param name
 * @returns
 */
function reqRaN(name) {
	return !isChecked($("input:radio[name='" + name + "']"));
}
/**
 * 根据radio组件name获取value
 * @param name
 * @returns
 */
function fRaVaByN(name) {
	var arr = $("input:radio[name='" + name + "']");
	for (var i = 0;i < arr.length;i++) if (arr[i].checked) return arr[i].value;
}
/*radio结束*/

/*checkbox开始*/
/**
 * 根据checkbox组件name判断组件是否选中，没选中返回true，选中返回false
 * @param name
 * @returns
 */
function reqCboxN(name) {
	return !isChecked($("[name='" + name + "']"));
}
/*checkbox开始*/

/**
 * 根据组件判断组件是否选中，没选中返回true，选中返回false
 * @param ass
 * @returns
 */
function isChecked(ass) {
	return ass.is(":checked");
}
/**
 * 根据组件使组件获取焦点，返回true
 * @param ass
 * @returns {Boolean}
 */
function returnAndFocus(ass) {
	ass.focus().val(''); return true;
}
/**
 * 根据组件name判断组件内容长度
 * @param name
 * @param maxLength 最大值
 * @returns
 */
function reqNtoMaxLength(name,maxLength) {
	var ass = $("[name='" + name + "']");
	if (ass.val().length > maxLength) {
		ass.focus();
		return true;
	}
	return false;
}
/**
 * 根据组件id判断组件内容长度
 * @param id
 * @param maxLength 最大值
 * @returns
 */
function reqItoMaxLength(id,maxLength) {
	var ass = $("#" + id);
	if (ass.val().length > maxLength) {
		ass.focus();
		return true;
	}
	return false;
}
/**
 * 组件内只能填数字或小数
 * @param arr 当前组件
 * @param num 默认值
 */
function isNum(arr,num) {
	arr.value=parseFloat(arr.value);if (isNaN(arr.value) || arr.value<=0){arr.value=num;};
	//var re=/^[0-9]{0}([0-9]|[.])+$/; 
	//if (re.exec(arr.value) == null) arr.value = num;	
}
/**
 * 根据组件name得到组件的value数
 * @param name
 */
function getNum(name) {
	return parseFloat($("[name='" + name + "']").val());
}
