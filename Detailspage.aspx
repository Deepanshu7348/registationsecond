<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detailspage.aspx.cs" Inherits="interview_regilistview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="Stm.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          
          
         <div>
            <asp:ListView ID="ListView1" runat="server">

                <LayoutTemplate>  
              <table border="1">  
                  <tr>
                       </td>
                      <th>FirstName</th>  
                      <th>LastName</th>  
                      <th>E-Mail</th>  
                      <th>Country</th>
                      <th>State</th>
                      <th>City</th>
                      <th>Gender</th>
                     <th>Date Of Birth</th>
                   
                      
                       </tr>
                  
                  <tr runat="server" id="itemPlaceholder"></tr>  
                  </table>  
          </LayoutTemplate> 
           
          <ItemTemplate> 
              <tr>
              <td> 
                  
                
                  <%# Eval("FirstName") %>  
                 
              </td>  
              <td>  
                  <%# Eval("LastName") %>  
              </td>  
              <td>  
                  <%# Eval("Email") %>  
              </td>  
              <td>  
                  <%# Eval("Country")%>  

              </td>
                  <td>
               <%# Eval("State")%>  

              </td>
                  
                  
                   <td><%# Eval("City") %>
                  </td>
                   <td>
                      <%# Eval("Gender") %>
                  </td>
                  <td>
                      <%# Eval("Date Of Birth") %>
                  </td>
                   
                  
                  
                  
                
                   </ItemTemplate>  
            </asp:ListView>
         </div>   
      
       </form>
        
   
</body>
</html>



