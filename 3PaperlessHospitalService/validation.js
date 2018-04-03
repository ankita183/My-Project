//===============valid login page
function valid_login(l)
{
if(l.uname.value=="")
{
alert("Enter Username ");
l.uname.value=="";
l.uname.focus();
return false;
}
if(l.pwd.value=="")
{
alert("Enter Password ");
l.pwd.value=="";
l.pwd.focus();
return false;
}
if(l.type.value=="")
{
alert("Enter dept Type");
l.type.value=="";
l.type.focus();
return false;
}
return true;
}

//========add_clerk===========
function valid_clerk(l)
{
if(l.cname.value=="")
{
alert("Enter Name");
l.cname.value=="";
l.cname.focus();
return false;
}

if(l.uname.value=="")
{
alert("Enter UserName");
l.uname.value=="";
l.uname.focus();
return false;
}

if(l.pwd.value=="")
{
alert("Enter Password");
l.pwd.value=="";
l.pwd.focus();
return false;
}

if(l.cpwd.value=="")
{
alert("Enter Confirm-Password");
l.cpwd.value=="";
l.cpwd.focus();
return false;
}

if(l.pwd.value!=l.cpwd.value)
{
alert("Enter Password DoesNot Match");
l.cpwd.value=="";
l.pwd.focus();
return false;
}

if(l.age.value=="")
{
alert("Enter Age");
l.age.value=="";
l.age.focus();
return false;
}


if(l.gender.value=="")
{
alert("Select Gender");
l.gender.value=="";
l.gender.focus();
return false;
}
if(l.cno.value=="")
{
alert("Enter contact Number");
l.cno.value=="";
l.cno.focus();
return false;
}

if(isNaN(l.cno.value))
{
alert("Entered value is not a Number");
l.cno.focus();
return false;
}


if(l.email.value=="")
{
alert("Enter email-id");
l.email.value=="";
l.email.focus();
return false;
}
if(l.email.value.indexOf("@")==-1||l.email.value.indexOf("@")==0)
{
	alert("Invalid E-mail");
	l.email.value=="";
	l.email.focus();
}

if(l.email.value.indexOf(".")==-1||l.email.value.indexOf(".")==0)
{
	alert("Invalid E-mail");
	l.email.value=="";
	l.email.focus();
}

if(l.addr.value=="")
{
alert("Enter Address");
l.addr.value=="";
l.addr.focus();
return false;
}
return true;
}


//========add_doctor===========
function add_doctor(l)
{
if(l.dname.value=="")
{
alert("Enter Name");
l.dname.value=="";
l.dname.focus();
return false;
}

if(l.uname.value=="")
{
alert("Enter UserName");
l.uname.value=="";
l.uname.focus();
return false;
}

if(l.pwd.value=="")
{
alert("Enter Password");
l.pwd.value=="";
l.pwd.focus();
return false;
}

if(l.cpwd.value=="")
{
alert("Enter Confirm-Password");
l.cpwd.value=="";
l.cpwd.focus();
return false;
}

if(l.pwd.value!=l.cpwd.value)
{
alert("Enter Password DoesNot Match");
l.cpwd.value=="";
l.pwd.focus();
return false;
}

if(l.dept_name.value=="")
{
alert("Enter Department Name");
l.dept_name.value=="";
l.dept_name.focus();
return false;
}

if(l.qua.value=="")
{
alert("Enter Qualification");
l.qua.value=="";
l.qua.focus();
return false;
}

if(l.exp.value=="")
{
alert("Enter Experience");
l.exp.value=="";
l.exp.focus();
return false;
}


if(l.dob.value=="")
{
alert("Enter Date of Birth");
l.dob.value=="";
l.dob.focus();
return false;
}


if(l.gender.value=="")
{
alert("Select Gender");
l.gender.value=="";
l.gender.focus();
return false;
}

if(l.cno.value=="")
{
alert("Enter Contact Number");
l.cno.value=="";
l.cno.focus();
return false;
}


if(isNaN(l.cno.value))
{
alert("Entered value is not a Number");
l.cno.focus();
return false;
}


if(l.email.value=="")
{
alert("Enter email-id");
l.email.value=="";
l.email.focus();
return false;
}

if(l.addr.value=="")
{
alert("Enter Address");
l.addr.value=="";
l.addr.focus();
return false;
}
return true;
}

//========add_billing===========
function valid_billing(l)
{
if(l.aname.value=="")
{
alert("Enter Name");
l.aname.value=="";
l.aname.focus();
return false;
}

if(l.uname.value=="")
{
alert("Enter UserName");
l.uname.value=="";
l.uname.focus();
return false;
}

if(l.pwd.value=="")
{
alert("Enter Password");
l.pwd.value=="";
l.pwd.focus();
return false;
}

if(l.cpwd.value=="")
{
alert("Enter Confirm-Password");
l.cpwd.value=="";
l.cpwd.focus();
return false;
}

if(l.pwd.value!=l.cpwd.value)
{
alert("Enter Password DoesNot Match");
l.cpwd.value=="";
l.pwd.focus();
return false;
}

if(l.age.value=="")
{
alert("Enter Age");
l.age.value=="";
l.age.focus();
return false;
}


if(l.gender.value=="")
{
alert("Select Gender");
l.gender.value=="";
l.gender.focus();
return false;
}


if(l.cno.value=="")
{
alert("Enter Contact Number");
l.cno.value=="";
l.cno.focus();
return false;
}


if(isNaN(l.cno.value))
{
alert("Entered value is not a Number");
l.cno.focus();
return false;
}


if(l.email.value=="")
{
alert("Enter email-id");
l.email.value=="";
l.email.focus();
return false;
}

if(l.addr.value=="")
{
alert("Enter Address");
l.addr.value=="";
l.addr.focus();
return false;
}
return true;
}

//========add_insurance===========
function valid_insurance(l)
{
if(l.uname.value=="")
{
alert("Enter UserName");
l.uname.value=="";
l.uname.focus();
return false;
}

if(l.pwd.value=="")
{
alert("Enter Password");
l.pwd.value=="";
l.pwd.focus();
return false;
}

if(l.cpwd.value=="")
{
alert("Enter Confirm-Password");
l.cpwd.value=="";
l.cpwd.focus();
return false;
}

if(l.pwd.value!=l.cpwd.value)
{
alert("Enter Password DoesNot Match");
l.cpwd.value=="";
l.pwd.focus();
return false;
}

if(l.age.value=="")
{
alert("Enter Age");
l.age.value=="";
l.age.focus();
return false;
}


if(l.gender.value=="")
{
alert("Select Gender");
l.gender.value=="";
l.gender.focus();
return false;
}


if(l.cno.value=="")
{
alert("Enter Contact Number");
l.cno.value=="";
l.cno.focus();
return false;
}


if(isNaN(l.cno.value))
{
alert("Entered value is not a Number");
l.cno.focus();
return false;
}


if(l.email.value=="")
{
alert("Enter email-id");
l.email.value=="";
l.email.focus();
return false;
}

if(l.addr.value=="")
{
alert("Enter Address");
l.addr.value=="";
l.addr.focus();
return false;
}
return true;
}

//===================valid sendproblem page
function valid_sendproblem(s)
{
if(s.sno.value=="")
{
alert(s.name+""+"Field Missed ");
s.sno.focus();
return false;
}
if(isNaN(s.sno.value))
{
alert("Enter System is not a Number");
s.sno.focus();
return false;
}
if(s.dname.value=="")
{
alert("Enter Department");
s.dname.value=="";
s.dname.focus();
return false;
}
if(s.date1.value=="")
{
alert("Enter Date");
s.date1.value=="";
s.date1.focus();
return false;
}
if(s.subject.value=="")
{
alert("Enter Subject");
s.subject.value=="";
s.subject.focus();
return false;
}
if(s.problem.value=="")
{
alert("Enter Problem");
s.problem.value=="";
s.problem.focus();
return false;
}
return true;
}
//===============send solution
function valid_sendsolution(sp)
{
if(sp.prid.value=="")
{
alert(sp.name+""+"Field Missed ");
sp.prid.focus();
return false;
}
if(isNaN(sp.prid.value))
{
alert("Problem id is not a Number");
sp.prid.focus();
return false;
}
if(sp.file1.value=="")
{
alert("Upload File");
sp.file1.value=="";
sp.file1.focus();
return false;
}
return true;
}
//===========view solution page
function valid_viewsolution(vs)
{
if(vs.proid.value=="")
{
alert(vs.name+""+"Field Missed ");
vs.proid.focus();
return false;
}
if(isNaN(vs.proid.value))
{
alert("Enter Proble ID is not a Number");
vs.proid.focus();
return false;
}
return true;
}
//===========clerk add the patient
function add_patient(ap)
{
	if(ap.p_name.value=="")
	{
		alert("enter patient name");
		ap.p_name.focus();
		return false;
	}

	if(ap.p_age.value=="")
	{
		alert("enter patient age");
		ap.p_age.focus();
		return false;
	}
if(ap.p_weight.value=="")
	{
		alert("enter patient weight");
		ap.p_weight.focus();
		return false;
	}

if(ap.p_city.value=="")
	{
		alert("enter patient city");
		ap.p_city.focus();
		return false;
	}

if(ap.p_bg.value=="")
	{
		alert("enter patient blood group");
		ap.p_bg.focus();
		return false;
	}

if(ap.p_precent.value=="")
	{
		alert("enter patient blood precentage");
		ap.p_precent.focus();
		return false;
	}

if(ap.p_insurance.value=="")
	{
		alert("enter patient insuranceid");
		ap.p_insurance.focus();
		return false;
	}

if(ap.p_date.value=="")
	{
		alert("enter joining date");
		ap.p_date.focus();
		return false;
	}

if(ap.p_contact.value=="")
	{
		alert("enter patient contact no");
		ap.p_contact.focus();
		return false;
	}

if(ap.p_email.value=="")
	{
		alert("enter patient email");
		ap.p_email.focus();
		return false;
	}

if(ap.p_problem.value=="")
	{
		alert("enter patient problem");
		ap.p_problem.focus();
		return false;
	}

	return true;
}
//===========clerk update the patient details
function update_patient(up)
{
	if(up.patient_id.value=="")
	{
		alert("enter patient-id");
		up.patient_id.focus();
		return false;

	}
	return true;
}
//===========add insurance holders
function add_insurance_holder(adh)
{
	if(adh.i_id.value=="")
	{
		alert("enter insurance holder name");
		adh.i_id.focus();
		return false;
	}
	return true;
}