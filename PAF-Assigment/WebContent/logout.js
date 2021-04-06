function sub(data)
{
if(data=="b1")
{
alert("logout succesfully");
document.getElementById("logout").action="login.jsp";
}
else if(data=="b2")
{
alert("you have cancel to logout");
document.getElementById("logout").action="success.jsp";
}

}