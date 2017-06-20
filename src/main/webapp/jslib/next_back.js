	
//3
function chaiqianxuanzhong() {
		document.getElementById("chaiqianwancheng").style.display = (document
				.getElementById("chaiqianshifouwancheng").checked == true) ? "block"
				: "none";
		/*document.getElementById("demolitionComplete").style.display = (document
				.getElementById("chaiqianshifouwancheng").checked == true) ? "inline"
				: "none";
		var nonereg = document.getElementById("nonereg");
		var chaiqianshifouwancheng = document.getElementById("chaiqianshifouwancheng");
		var regulatory = document.getElementById("regulatory");
		
		var endDCTime = document.getElementById("endDCTime");			
		$(endDCTime).val("");
		$("#endDCTime").datebox("setValue", "");
		if(chaiqianshifouwancheng.checked == true){
			
			regulatory.checked = false;
			nonereg.checked = false;
			regulatoryIsEnd();	
			$("input[name='topic.erDemolitionComplete']").removeAttr('name');
			
			$("input[name='topic.erDemolitionCompleteTime']").removeAttr('name');
			$(chaiqianshifouwancheng).attr("name","topic.erDemolitionComplete");	
			var nonDCTime = document.getElementById("nonDCTime");
			$(nonDCTime).attr("name","topic.erDemolitionCompleteTime");
			
		}*/
		
		
		//name="topic.erDemolitionComplete"
	
	}
	//2
	function regulatoryIsEnd(){
		var nonereg = document.getElementById("nonereg");
		var chaiqianshifouwancheng = document.getElementById("chaiqianshifouwancheng");
		var regulatory = document.getElementById("regulatory");
		var $nonereg = $(nonereg);
		var $chaiqianshifouwancheng = $(chaiqianshifouwancheng);
		var $regulatory = $(regulatory);
		document.getElementById("regulatoryApproval").style.display = (document
				.getElementById("regulatory").checked == true) ? "inline"
				: "none";
		$("#nonDCTime").datebox("setValue", "");
		if(regulatory.checked == true){
			chaiqianshifouwancheng.checked = false;
			nonereg.checked = false;
			chaiqianxuanzhong() ;
			$("input[name='topic.erDemolitionComplete']").removeAttr('name');
			
			$("input[name='topic.erDemolitionCompleteTime']").removeAttr('name');
			$regulatory.attr("name","topic.erDemolitionComplete");
			$("#endDCTime").attr("name","topic.erDemolitionCompleteTime");
			
		}
		
		
	}
	//1
	function noneregulatory(){
		var nonereg = document.getElementById("nonereg");
		var chaiqianshifouwancheng = document.getElementById("chaiqianshifouwancheng");
		var regulatory = document.getElementById("regulatory");
		var $nonereg = $(nonereg);
		var $chaiqianshifouwancheng = $(chaiqianshifouwancheng);
		var $regulatory = $(regulatory);
		$("#endDCTime").datebox("setValue", "");
		$("#nonDCTime").datebox("setValue", "");
		if(nonereg.checked == true){
			chaiqianshifouwancheng.checked = false;
			regulatory.checked = false;
			chaiqianxuanzhong();
			regulatoryIsEnd();
			$("input[name='topic.erDemolitionComplete']").removeAttr('name');
			$nonereg.attr("name","topic.erDemolitionComplete"); 
			$("input[name='topic.erDemolitionCompleteTime']").removeAttr('name');
		}
	}
	
//3
	function tudibaopipart(){
		document.getElementById("tudibaopi").style.display = (document
				.getElementById("tudibaopishifouwancheng").checked == true) ? "block"
				: "none";
	}
	function tudibaopixuanzhong(id) {
		document.getElementById("tudibaopi").style.display = (document
				.getElementById(id).checked == true) ? "block"
				: "none";
		
	/*	document.getElementById("nonelandListTime").style.display = (document
				.getElementById("tudibaopishifouwancheng").checked == true) ? "inline"
				: "none";
		$("#endLandTime").datebox("setValue", "");
		if(document
				.getElementById("tudibaopishifouwancheng").checked == true){
			document.getElementById("tudiIsEnd").checked = false;
			document.getElementById("noneTudi").checked = false;
			tudiBaopiIsEnd();
			$("input[name='topic.erLandList']").removeAttr('name');			
			$("input[name='topic.erLandListTime']").removeAttr('name');
			$("#tudibaopishifouwancheng").attr("name","topic.erLandList");
			$("#nonLandTime").attr("name","topic.erLandListTime");
		}
		*/
		
	}
	//2
	function tudiBaopiIsEnd(){
		document.getElementById("landListTime").style.display = (document
				.getElementById("tudiIsEnd").checked == true) ? "inline"
				: "none";
		$("#nonLandTime").datebox("setValue", "");
		if(document
				.getElementById("tudiIsEnd").checked == true){
			document.getElementById("tudibaopishifouwancheng").checked = false;
			document.getElementById("noneTudi").checked = false;
			tudibaopixuanzhong() ;
			$("input[name='topic.erLandList']").removeAttr('name');
			
			$("input[name='topic.erLandListTime']").removeAttr('name');
			$("#tudiIsEnd").attr("name","topic.erLandList");
			$("#endLandTime").attr("name","topic.erLandListTime");
		}
		
		
	}
	//1
	function noneTudiBaopi(){
		$("#endLandTime").datebox("setValue", "");
		$("#nonLandTime").datebox("setValue", "");
		if(document
				.getElementById("noneTudi").checked == true){
			document.getElementById("tudibaopishifouwancheng").checked = false;
			document.getElementById("tudiIsEnd").checked = false;
			tudibaopixuanzhong();
			tudiBaopiIsEnd();
			$("input[name='topic.erLandList']").removeAttr('name');
			$("#noneTudi").attr("name","topic.erLandList"); 
			$("input[name='topic.erLandListTime']").removeAttr('name');
		}
	}
	
	function noneKongguiFun(){
		$("#endKGTime").datebox("setValue", "");
		$("#nonKGTime").datebox("setValue", "");
		if(document
				.getElementById("noneKonggui").checked == true){
			document.getElementById("kongguibaopishifouwancheng").checked = false;
			document.getElementById("kongguiEnd").checked = false;
			kongguibaopixuanzhong();
			kongguiIsEnd();
			$("input[name='topic.erRegulatoryApprova']").removeAttr('name');
			$("#noneKonggui").attr("name","topic.erRegulatoryApprova"); 
			$("input[name='topic.erRegulatoryApprovalTime']").removeAttr('name');
		}
	}

	function kongguiIsEnd(){
		document.getElementById("kongguiTime").style.display = (document
				.getElementById("kongguiEnd").checked == true) ? "inline"
				: "none";
		$("#nonKGTime").datebox("setValue", "");
		if(document
				.getElementById("kongguiEnd").checked == true){
			document.getElementById("kongguibaopishifouwancheng").checked = false;
			document.getElementById("noneKonggui").checked = false;
			kongguibaopixuanzhong() ;
			$("input[name='topic.erRegulatoryApprova']").removeAttr('name');			
			$("input[name='topic.erRegulatoryApprovalTime']").removeAttr('name');
			$("#kongguiEnd").attr("name","topic.erRegulatoryApprova");
			$("#endKGTime").attr("name","topic.erRegulatoryApprovalTime");
		}
		
		
	}

	function kongguibaopixuanzhong() {
		document.getElementById("kongguibaopi").style.display = (document
				.getElementById("kongguibaopishifouwancheng").checked == true) ? "block"
				: "none";
	/*	document.getElementById("noneKongguiTime").style.display = (document
				.getElementById("kongguibaopishifouwancheng").checked == true) ? "inline"
				: "none";
		$("#endKGTime").datebox("setValue", "");
		if(document
				.getElementById("kongguibaopishifouwancheng").checked == true){
			document.getElementById("kongguiEnd").checked = false;
			document.getElementById("noneKonggui").checked = false;
			kongguiIsEnd();
			$("input[name='topic.erRegulatoryApprova']").removeAttr('name');			
			$("input[name='topic.erRegulatoryApprovalTime']").removeAttr('name');
			$("#kongguibaopishifouwancheng").attr("name","topic.erRegulatoryApprova");
			$("#nonKGTime").attr("name","topic.erRegulatoryApprovalTime");
		}
		
		*/
	}
	
	
	
	
	
	
	
	
	
	/*******************************/

	function beianbaopixuanzhong() {
		document.getElementById("beianbaopi").style.display = (document
				.getElementById("beianbaopishifouwancheng").checked == true) ? "block"
				: "none";
	}

	function huanpingbaopixuanzhong() {
		document.getElementById("huanpingbaopi").style.display = (document
				.getElementById("huanpingbaopishifouwancheng").checked == true) ? "block"
				: "none";
	}
	
	function zdxm_next(){		
		document.getElementById("wentimiaoshu").style.display = "block";
		document.getElementById("zhongdianxiangmu").style.display = "none";
	}
	
	function hpsp_next(){
		document.getElementById("huanpingshenpi").style.display = "none";
		document.getElementById("jiansheguihuashenpi").style.display = "block";
	}
	
	function jsgh_next(){
		document.getElementById("jiansheguihuashenpi").style.display = "none";
		document.getElementById("wentimiaoshu").style.display = "block";
		
	}
	
	function hpsp_back(){
		document.getElementById("huanpingshenpi").style.display = "none";
		document.getElementById("zhongdianxiangmu").style.display = "block";
	}
	
	
	function jsgh_back(){
		document.getElementById("huanpingshenpi").style.display = "block";
		document.getElementById("jiansheguihuashenpi").style.display = "none";
	}
	
	function wtms_back(){
		
		document.getElementById("zhongdianxiangmu").style.display = "block";
		document.getElementById("wentimiaoshu").style.display = "none";
	}	
	
	$(document).ready(function(){
		  $(".click").click(function(){
		  $(".tip").fadeIn(200);
		  });
		  
		  $(".tiptop a").click(function(){
		  $(".tip").fadeOut(200);
		});

		  $(".sure").click(function(){
		  $(".tip").fadeOut(100);
		});

		  $(".cancel").click(function(){
		  $(".tip").fadeOut(100);
		});

		});
	
	function qit(){
		var v=document.all("topic.type");
		for(i=0;i<v.length;i++){
			if(v[i].checked){
				//alert(v[i].value);
				if(v[i].value==3){
					document.getElementById("qt").style.display = (document
		    				.getElementById("q").checked == true) ? "block"
		    				: "none";
				}else{
					document.getElementById("qt").style.display = (document
		    				.getElementById("q").checked == false) ? "none"
		    				: "block";
				}
			}
		}
	}
	
	
	function qit_update(id){
		
		$("input[name='topic.progressType'][value="+id+"]").attr('checked','true');
	}
	
	function type_update(id){
		
		$("input[name='topic.type'][value="+id+"]").attr('checked','true');
		if(id==3){
			$("#qt").show();
		}
	}
	
	function xiaozu_update(id){
		$("#select_leadingGroup").val(id).change();
	
	}
	
	function cmc_update(id){
		$("#select_cmc").val(id).change();
	}
	
	
	