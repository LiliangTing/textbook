function topicUpdateValidator(){
	var topicname = $("input[name='topic.name']").val();
	if(topicname.length==0){
		alert("项目业主及名称不能为空");
		return false;
	}
	
	var  topic_progressType = $("input[name='topic.progressType']:checked").val();
	if(topic_progressType==null){
		alert("进度类别不能为空");
		return false;
	}
	
	var topic_type = $("input[name='topic.type']:checked").val();
	if(topic_type==null){
		alert("管理类别不能为空");
		return false;
	}
	
	var topic_totalInvestment = $("input[name='topic.totalInvestment']").val();
	if(topic_totalInvestment.length==0){
		alert("总投资不能为空");
		return false;
	}
	
	var topic_businessEntuty = $("input[name='topic.businessEntuty']").val();
	if(topic_businessEntuty.length==0){
		alert("企业法人不能为空");
		return false;
	}
	
	var topic_companyContact = $("input[name='topic.companyContact']").val();
	if(topic_companyContact.length==0){
		alert("企业联系人不能为空");
		return false;
	}
	
	var topic_businessContact = $("input[name='topic.businessContact']").val();
	if(topic_businessContact.length==0){
		alert("企业联系人联系方式不能为空");
		return false;
	}
	
	var topic_planStartTime = $("input[name='topic.planStartTime']").val();
	if(topic_planStartTime.length==0){
		alert("建设开始时间不能为空");
		return false;
	}
	
	var topic_planStopTime = $("input[name='topic.planStopTime']").val();
	if(topic_planStopTime.length==0){
		alert("建设截止时间不能为空");
		return false;
	}
	
	var topic_responsibilityUnit = $("input[name='topic.responsibilityUnit']").val();
	if(topic_responsibilityUnit.length==0){
		alert("项目责任单位不能为空");
		return false;
	}
	
	var topic_responsibleLeadership = $("input[name='topic.responsibleLeadership']").val();
	if(topic_responsibleLeadership.length==0){
		alert("责任人不能为空");
		return false;
	}
	
	var topic_liaisonName = $("input[name='topic.liaisonName']").val();
	if(topic_liaisonName.length==0){
		alert("联络员姓名不能为空");
		return false;
	}
	
	var topic_liaisonContact = $("input[name='topic.liaisonContact']").val();
	if(topic_liaisonContact.length==0){
		alert("联络员联系方式不能为空");
		return false;
	}
	
	var topic_projectCommand = $("input[name='topic.projectCommand']").val();
	if(topic_projectCommand.length==0){
		alert("项目指挥长不能为空");
		return false;
	}
	
	var topic_content = $('#content7').val();
	if(topic_content.length==0){
		alert("项目建设规模及主要内容不能为空");
		return false;
	}
	
	var topic_meanBenefit = $('#content8').val();
	if(topic_meanBenefit.length==0){
		alert("项目建设的意义及效益不能为空");
		return false;
	}
}



function addTopicValidator(){
	var topicname = $("input[name='topic.name']").val();
	if(topicname.length==0){
		alert("项目业主及名称不能为空");
		return false;
	}
	
	var  topic_progressType = $("input[name='topic.progressType']:checked").val();
	if(topic_progressType==null){
		alert("进度类别不能为空");
		return false;
	}
	
	var topic_type = $("input[name='topic.type']:checked").val();
	if(topic_type==null){
		alert("管理类别不能为空");
		return false;
	}
	
	var topic_totalInvestment = $("input[name='topic.totalInvestment']").val();
	if(topic_totalInvestment.length==0){
		alert("总投资不能为空");
		return false;
	}
	
	var topic_businessEntuty = $("input[name='topic.businessEntuty']").val();
	if(topic_businessEntuty.length==0){
		alert("企业法人不能为空");
		return false;
	}
	
	var topic_companyContact = $("input[name='topic.companyContact']").val();
	if(topic_companyContact.length==0){
		alert("企业联系人不能为空");
		return false;
	}
	
	var topic_businessContact = $("input[name='topic.businessContact']").val();
	if(topic_businessContact.length==0){
		alert("企业联系人联系方式不能为空");
		return false;
	}
	
	var topic_planStartTime = $("input[name='topic.planStartTime']").val();
	if(topic_planStartTime.length==0){
		alert("建设开始时间不能为空");
		return false;
	}
	
	var topic_planStopTime = $("input[name='topic.planStopTime']").val();
	if(topic_planStopTime.length==0){
		alert("建设截止时间不能为空");
		return false;
	}
	
	var topic_responsibilityUnit = $("input[name='topic.responsibilityUnit']").val();
	if(topic_responsibilityUnit.length==0){
		alert("项目责任单位不能为空");
		return false;
	}
	
	var topic_responsibleLeadership = $("input[name='topic.responsibleLeadership']").val();
	if(topic_responsibleLeadership.length==0){
		alert("责任人不能为空");
		return false;
	}
	
	var topic_liaisonName = $("input[name='topic.liaisonName']").val();
	if(topic_liaisonName.length==0){
		alert("联络员姓名不能为空");
		return false;
	}
	
	var topic_liaisonContact = $("input[name='topic.liaisonContact']").val();
	if(topic_liaisonContact.length==0){
		alert("联络员联系方式不能为空");
		return false;
	}
	
	var topic_projectCommand = $("input[name='topic.projectCommand']").val();
	if(topic_projectCommand.length==0){
		alert("项目指挥长不能为空");
		return false;
	}
	
	var topic_content = $('#content7').val();
	if(topic_content.length==0){
		alert("项目建设规模及主要内容不能为空");
		return false;
	}
	
	var topic_meanBenefit = $('#content8').val();
	if(topic_meanBenefit.length==0){
		alert("项目建设的意义及效益不能为空");
		return false;
	}
}