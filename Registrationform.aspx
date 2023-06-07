<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrationform.aspx.cs" Inherits="interviewregister" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
   
    <link rel="stylesheet" type="text/css" href="Stm.css"/>
    
    <title></title>

</head>
<body>
     <form class="form-container" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> 
            
                 
    <section class="container">
        <section class="row justify-content-lg-start">
            <section class="col-md-12">
               
                    <div class="form-group">
                       <div class="text-center-text-primary td"><i class="fa-solid fa-registered"> Registration</i></div>
                       
                         <div class="form-group">
                             <div>
   </div>
   
       <label for="inputFatherName" class="form-label">FirstName</label>

      
    <asp:TextBox ID="txtFirstName"  class="form-control"  runat="server"></asp:TextBox>
 <asp:requiredfieldvalidator  ValidationGroup="Name"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator4" controltovalidate="txtFirstName" runat="server" errormessage="Please enter Name"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator  ValidationGroup="Name" Style="color: red"  ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="Please enter corret  FirstName" ID="Name" runat="Server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator><br />
</div>
</div>
   
  
    <div class="form-group">
    <label for="inputFatherName" class="form-label">LastName</label>
    <asp:TextBox ID="txtLastName"  class="form-control"  runat="server"></asp:TextBox>
 <asp:requiredfieldvalidator ValidationGroup="LastName" style="color: red" display="Dynamic" id="LastName" controltovalidate="txtLastName" runat="server" errormessage="Please enter LastName"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator ValidationGroup="LastName" Style="color: red" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Please enter correct LastName" ID="RegularExpressionValidator3" runat="Server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator><br/>
</div>

  <div class="form-group">
    <label for="inputFatherName" class="form-label">E-Email</label>
   <asp:TextBox ID="TxtEmail"  class="form-control"  runat="server"></asp:TextBox>
       <asp:requiredfieldvalidator ValidationGroup="Ema" style="color: red" display="Dynamic" id="Requiredfieldvalidator2" controltovalidate="TxtEmail" runat="server" errormessage="Plz enter Email"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator ValidationGroup="Em" Style="color: red" ControlToValidate="TxtEmail" Display="Dynamic" ErrorMessage="Plz enter  email  like kavv12@gmail.com" ID="Email" runat="Server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br/>
 </div>




     <div class="form-group">
    <label for="inputFatherName" class="form-label">Country</label><br />
   <asp:DropDownList ID="Country" runat="server" CssClass="form-control">
         <asp:ListItem Value="0">Select Country</asp:ListItem>
                
                <asp:ListItem text="India" value="India"></asp:ListItem>
                <asp:ListItem text="Canada" value="Canada"></asp:ListItem>
                <asp:ListItem text="Germany" value="Germany"></asp:ListItem>
                <asp:ListItem text="Nepal" value="Nepal"></asp:ListItem></asp:DropDownList>
 
</div>
 <div class="form-group">
    <label for="inputFatherName" class="form-label">State</label><br />
   <asp:DropDownList ID="State" runat="server" CssClass="form-control">
         <asp:ListItem Value="0">Select State</asp:ListItem>
                
                <asp:ListItem text="Uttar Pradesh" value="Uttar Pradesh"></asp:ListItem>
                <asp:ListItem text="Nova Scotia" value="Nova Scotia"></asp:ListItem>
                <asp:ListItem text="Hessen" value="Hessen"></asp:ListItem>
                <asp:ListItem text="Gandaki Pradesh" value="Gandaki Pradesh"></asp:ListItem></asp:DropDownList>
 
</div>
 <div class="form-group">
    <label for="inputFatherName" class="form-label">City</label><br />
   <asp:DropDownList ID="City" runat="server" CssClass="form-control">
         <asp:ListItem Value="0">Select City</asp:ListItem>
                
                <asp:ListItem text="Luchnow" value="Luchnow"></asp:ListItem>
                <asp:ListItem text="Toronto" value="Toronto"></asp:ListItem>
                <asp:ListItem text="Berlin" value="Berlin"></asp:ListItem>
                <asp:ListItem text="Kathmandu" value="Kathmandu"></asp:ListItem></asp:DropDownList>
 
</div>
<div class="form-group">
    <label for="inputFatherName" class="form-label">Gender</label><br />
    <asp:RadioButtonList ID="Gender" runat="server" CssClass="form-control">
                  
                   <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem></asp:RadioButtonList></div>




   
  
   
  
  <div class="form-group">
    <label for="inputFatherName" class="form-label">Date Of Birth</label><br />
   <asp:TextBox ID="DOB" runat="server"   class="form-control" OnTextChanged="DOB_TextChanged" AutoPostBack="true"></asp:TextBox>
           <cc1:calendarextender ID="txt_CalendarExtender1" runat="server"  Format="dd/MM/yyyy"  TargetControlID="DOB"></cc1:calendarextender>
               </div><br /><br />  
 

   

       <asp:Button ID="Register" runat="server" Text="Register" cssclass="btn-btn-primary"  BackColor="skyblue"  height="30px" Width="300px" colour="blue" Onclick="Register_Click" />
 
                   
       <asp:Button ID="Cancel" runat="server" Text="Click-details" cssclass="btn-btn-primary"  BackColor="SkyBlue"  height="30px" Width="300px" colour="blue"  Onclick="Cancel_Click1"/>
       
        </div>            
                    
                  
  </form>
               
       </section>
          </section>
         </section>
          
   
       </body>
</html>




      
