function topicUpdateValidator(){
	var topicname = $("input[name='topic.name']").val();
	if(topicname.length==0){
		alert("��Ŀҵ�������Ʋ���Ϊ��");
		return false;
	}
	
	var  topic_progressType = $("input[name='topic.progressType']:checked").val();
	if(topic_progressType==null){
		alert("���������Ϊ��");
		return false;
	}
	
	var topic_type = $("input[name='topic.type']:checked").val();
	if(topic_type==null){
		alert("���������Ϊ��");
		return false;
	}
	
	var topic_totalInvestment = $("input[name='topic.totalInvestment']").val();
	if(topic_totalInvestment.length==0){
		alert("��Ͷ�ʲ���Ϊ��");
		return false;
	}
	
	var topic_businessEntuty = $("input[name='topic.businessEntuty']").val();
	if(topic_businessEntuty.length==0){
		alert("��ҵ���˲���Ϊ��");
		return false;
	}
	
	var topic_companyContact = $("input[name='topic.companyContact']").val();
	if(topic_companyContact.length==0){
		alert("��ҵ��ϵ�˲���Ϊ��");
		return false;
	}
	
	var topic_businessContact = $("input[name='topic.businessContact']").val();
	if(topic_businessContact.length==0){
		alert("��ҵ��ϵ����ϵ��ʽ����Ϊ��");
		return false;
	}
	
	var topic_planStartTime = $("input[name='topic.planStartTime']").val();
	if(topic_planStartTime.length==0){
		alert("���迪ʼʱ�䲻��Ϊ��");
		return false;
	}
	
	var topic_planStopTime = $("input[name='topic.planStopTime']").val();
	if(topic_planStopTime.length==0){
		alert("�����ֹʱ�䲻��Ϊ��");
		return false;
	}
	
	var topic_responsibilityUnit = $("input[name='topic.responsibilityUnit']").val();
	if(topic_responsibilityUnit.length==0){
		alert("��Ŀ���ε�λ����Ϊ��");
		return false;
	}
	
	var topic_responsibleLeadership = $("input[name='topic.responsibleLeadership']").val();
	if(topic_responsibleLeadership.length==0){
		alert("�����˲���Ϊ��");
		return false;
	}
	
	var topic_liaisonName = $("input[name='topic.liaisonName']").val();
	if(topic_liaisonName.length==0){
		alert("����Ա��������Ϊ��");
		return false;
	}
	
	var topic_liaisonContact = $("input[name='topic.liaisonContact']").val();
	if(topic_liaisonContact.length==0){
		alert("����Ա��ϵ��ʽ����Ϊ��");
		return false;
	}
	
	var topic_projectCommand = $("input[name='topic.projectCommand']").val();
	if(topic_projectCommand.length==0){
		alert("��Ŀָ�ӳ�����Ϊ��");
		return false;
	}
	
	var topic_content = $('#content7').val();
	if(topic_content.length==0){
		alert("��Ŀ�����ģ����Ҫ���ݲ���Ϊ��");
		return false;
	}
	
	var topic_meanBenefit = $('#content8').val();
	if(topic_meanBenefit.length==0){
		alert("��Ŀ��������弰Ч�治��Ϊ��");
		return false;
	}
}



function addTopicValidator(){
	var topicname = $("input[name='topic.name']").val();
	if(topicname.length==0){
		alert("��Ŀҵ�������Ʋ���Ϊ��");
		return false;
	}
	
	var  topic_progressType = $("input[name='topic.progressType']:checked").val();
	if(topic_progressType==null){
		alert("���������Ϊ��");
		return false;
	}
	
	var topic_type = $("input[name='topic.type']:checked").val();
	if(topic_type==null){
		alert("���������Ϊ��");
		return false;
	}
	
	var topic_totalInvestment = $("input[name='topic.totalInvestment']").val();
	if(topic_totalInvestment.length==0){
		alert("��Ͷ�ʲ���Ϊ��");
		return false;
	}
	
	var topic_businessEntuty = $("input[name='topic.businessEntuty']").val();
	if(topic_businessEntuty.length==0){
		alert("��ҵ���˲���Ϊ��");
		return false;
	}
	
	var topic_companyContact = $("input[name='topic.companyContact']").val();
	if(topic_companyContact.length==0){
		alert("��ҵ��ϵ�˲���Ϊ��");
		return false;
	}
	
	var topic_businessContact = $("input[name='topic.businessContact']").val();
	if(topic_businessContact.length==0){
		alert("��ҵ��ϵ����ϵ��ʽ����Ϊ��");
		return false;
	}
	
	var topic_planStartTime = $("input[name='topic.planStartTime']").val();
	if(topic_planStartTime.length==0){
		alert("���迪ʼʱ�䲻��Ϊ��");
		return false;
	}
	
	var topic_planStopTime = $("input[name='topic.planStopTime']").val();
	if(topic_planStopTime.length==0){
		alert("�����ֹʱ�䲻��Ϊ��");
		return false;
	}
	
	var topic_responsibilityUnit = $("input[name='topic.responsibilityUnit']").val();
	if(topic_responsibilityUnit.length==0){
		alert("��Ŀ���ε�λ����Ϊ��");
		return false;
	}
	
	var topic_responsibleLeadership = $("input[name='topic.responsibleLeadership']").val();
	if(topic_responsibleLeadership.length==0){
		alert("�����˲���Ϊ��");
		return false;
	}
	
	var topic_liaisonName = $("input[name='topic.liaisonName']").val();
	if(topic_liaisonName.length==0){
		alert("����Ա��������Ϊ��");
		return false;
	}
	
	var topic_liaisonContact = $("input[name='topic.liaisonContact']").val();
	if(topic_liaisonContact.length==0){
		alert("����Ա��ϵ��ʽ����Ϊ��");
		return false;
	}
	
	var topic_projectCommand = $("input[name='topic.projectCommand']").val();
	if(topic_projectCommand.length==0){
		alert("��Ŀָ�ӳ�����Ϊ��");
		return false;
	}
	
	var topic_content = $('#content7').val();
	if(topic_content.length==0){
		alert("��Ŀ�����ģ����Ҫ���ݲ���Ϊ��");
		return false;
	}
	
	var topic_meanBenefit = $('#content8').val();
	if(topic_meanBenefit.length==0){
		alert("��Ŀ��������弰Ч�治��Ϊ��");
		return false;
	}
}