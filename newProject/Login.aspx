<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="newProject.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
    body {
        /*background: url('https://www.pexels.com/photo/architectural-photography-of-bridge-459203/') no-repeat center center fixed;*/
        background-size: cover;
        font-family: 'Arial', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    
    #form1 {
        background: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.3);
        width: 400px;
        text-align: center;
        transition: transform 0.3s;
    }

    #form1:hover {
        transform: scale(1.02);
    }

    .label {
        color: #2c3e50;
        font-size: 26px;
        margin-bottom: 20px;
        display: block;
        font-weight: bold;
    }

    .dropdown {
        position: relative;
        width: 100%;
        margin: 15px 0;
    }

    .dropbtn {
        width: 100%;
        padding: 12px;
        background-color: #3498db;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-align: left;
        box-sizing: border-box;
        transition: background-color 0.3s;
    }

    .dropbtn:hover {
        background-color: #2980b9;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #fff;
        min-width: 100%;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        z-index: 1;
        border-radius: 5px;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        transition: background-color 0.3s;
    }

    .dropdown-content a:hover {
        background-color: #f1f1f1;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .textbox {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        transition: border-color 0.3s;
    }

    .textbox:focus {
        border-color: #3498db;
        outline: none;
    }

    .error {
        color: red;
        font-size: 12px;
        margin-top: -10px;
        margin-bottom: 10px;
    }

    .checkbox {
        margin: 10px 0;
    }

    .button {
        background-color: #3498db;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s;
    }

    .button:hover {
        background-color: #2980b9;
    }

    .footer {
        margin-top: 15px;
        font-size: 14px;
        color: #555;
    }

    .footer a {
        color: #3498db;
        text-decoration: none;
        transition: color 0.3s;
    }

    .footer a:hover {
        color: #2980b9;
    }
</style>
    <script>
        function validateForm() {
            var username = document.getElementById('<%= TextBox1.ClientID %>').value;
            var password = document.getElementById('<%= TextBox2.ClientID %>').value;
            var roleSelected = document.getElementById('roleSelected').innerText;
            var usernameError = document.getElementById('usernameError');
            var passwordError = document.getElementById('passwordError');
            var isValid = true;

            usernameError.innerText = "";
            passwordError.innerText = "";

            if (roleSelected === "Select Role") {
                alert("Please select a role.");
                isValid = false;
            }
            if (username === "") {
                usernameError.innerText = "Username is required.";
                isValid = false;
            }
            if (password === "") {
                passwordError.innerText = "Password is required.";
                isValid = false;
            }

            if (isValid) {
                // Check for valid credentials
                if (username === "vatsal" && password === "123") {
                    alert("Login successful!");
                } else {
                    alert("Invalid username or password.");
                    isValid = false;
                }
            }
            return isValid;
        }

        function selectRole(role) {
            document.getElementById('roleSelected').innerText = role;
            document.getElementById('<%= dropdownButton.ClientID %>').value = role;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Login To The Account"></asp:Label>
                <div class="dropdown">
                    <asp:Button ID="dropdownButton" CssClass="dropbtn" runat="server" Text="Select Role" OnClientClick="return false;" />
                    <div class="dropdown-content">
                        <a href="javascript:void(0)" onclick="selectRole('Admin')">Admin</a>
                        <a href="javascript:void(0)" onclick="selectRole('User')">User</a>
                    </div>
                </div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <span id="usernameError" class="error"></span>
                <span id="roleSelected" style="display:none;">Select Role</span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>
                <span id="passwordError" class="error"></span>
                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox" Text="Stay Signed in" />
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" OnClick="Button1_Click1" />
                <div class="footer">
                    <p>Forgot your password? <a href="#">Click here</a></p>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>





<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="newProject.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            background: url('https://www.example.com/background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        #form1 {
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }
        .label {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
            display: block;
        }
        .textbox {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-top: -10px;
            margin-bottom: 10px;
        }
        .checkbox {
            margin: 10px 0;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .footer {
            margin-top: 10px;
            font-size: 12px;
            color: #555;
        }
    </style>
    <script>
        function validateForm() {
            var username = document.getElementById('<%= TextBox1.ClientID %>').value;
            var password = document.getElementById('<%= TextBox2.ClientID %>').value;
            var usernameError = document.getElementById('usernameError');
            var passwordError = document.getElementById('passwordError');
            var isValid = true;
            usernameError.innerText = "";
            passwordError.innerText = "";
            if (username === "") {
                usernameError.innerText = "Username is required.";
                isValid = false;
            }
            if (password === "") {
                passwordError.innerText = "Password is required.";
                isValid = false;
            }
            if (isValid) {
                // Check for valid credentials
                if (username === "vatsal" && password === "123") {
                    alert("Login successful!");
                } else {
                    alert("Invalid username or password.");
                    isValid = false;
                }
            }
            return isValid;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Login To The Account"></asp:Label>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <span id="usernameError" class="error"></span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>
                <span id="passwordError" class="error"></span>
                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox" Text="Stay Signed in" />
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" OnClick="Button1_Click" />
                <div class="footer">
                    <p>Forgot your password? <a href="#">Click here</a></p>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>--%>




<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="newProject.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            background: url('https://www.example.com/background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        #form1 {
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }
        .label {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
            display: block;
        }
        .dropdown {
            position: relative;
            width: 100%;
            margin: 10px 0;
        }
        .dropdown .dropbtn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: left;
            box-sizing: border-box;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            min-width: 100%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1;
            border-radius: 5px;
        }
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .textbox {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-top: -10px;
            margin-bottom: 10px;
        }
        .checkbox {
            margin: 10px 0;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .footer {
            margin-top: 10px;
            font-size: 12px;
            color: #555;
        }
    </style>
    <script>
        function validateForm() {
            var username = document.getElementById('<%= TextBox1.ClientID %>').value;
            var password = document.getElementById('<%= TextBox2.ClientID %>').value;
            var roleSelected = document.getElementById('roleSelected').innerText;
            var usernameError = document.getElementById('usernameError');
            var passwordError = document.getElementById('passwordError');
            var isValid = true;

            usernameError.innerText = "";
            passwordError.innerText = "";

            if (roleSelected === "Select Role") {
                alert("Please select a role.");
                isValid = false;
            }
            if (username === "") {
                usernameError.innerText = "Username is required.";
                isValid = false;
            }
            if (password === "") {
                passwordError.innerText = "Password is required.";
                isValid = false;
            }

            if (isValid) {
                // Check for valid credentials
                if (username === "vatsal" && password === "123") {
                    alert("Login successful!");
                } else {
                    alert("Invalid username or password.");
                    isValid = false;
                }
            }
            return isValid;
        }

        function selectRole(role) {
            document.getElementById('roleSelected').innerText = role;
            document.getElementById('dropdownButton').innerText = role;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Login To The Account"></asp:Label>
                <div class="dropdown">
                    <asp:Button ID="dropdownButton" CssClass="dropbtn" runat="server" Text="Select Role" OnClientClick="return false;" />
                    <div class="dropdown-content">
                        <a href="#" onclick="selectRole('Admin')">Admin</a>
                        <a href="#" onclick="selectRole('User')">User</a>
                    </div>
                </div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <span id="usernameError" class="error"></span>
                <span id="roleSelected" style="display:none;">Select Role</span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>
                <span id="passwordError" class="error"></span>
                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox" Text="Stay Signed in" />
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" />
                <div class="footer">
                    <p>Forgot your password? <a href="#">Click here</a></p>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>--%>







<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="newProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 314px; width: 1322px">
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="313px" BackColor="#669999">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Login To The Account" BackColor="#669999" ForeColor="White"></asp:Label>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="218px" ></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged" Width="218px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Stay Signed in" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="White" Text="Submit" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>--%>

<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="newProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        #form1 {
            background-color: #669999;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .label {
            color: white;
            font-size: 24px;
            margin-bottom: 20px;
            display: block;
            text-align: center;
        }

        .textbox {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
        }

        .checkbox {
            margin: 10px 0;
        }

        .button {
            background-color: white;
            color: #669999;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        .button:hover {
            background-color: #e0e0e0;
        }
    </style>
    <script>
        function validateForm() {
            var username = document.getElementById('<%= TextBox1.ClientID %>').value;
            var password = document.getElementById('<%= TextBox2.ClientID %>').value;

            if (username === "" || password === "") {
                alert("Please fill in both fields.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Login To The Account"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>
                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox" Text="Stay Signed in" />
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>--%>







<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="newProject.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            background: url('https://www.example.com/background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        #form1 {
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }
        .label {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
            display: block;
        }
        .dropdown {
            position: relative;
            width: 100%;
            margin: 10px 0;
        }
        .dropbtn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: left;
            box-sizing: border-box;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            min-width: 100%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1;
            border-radius: 5px;
        }
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .textbox {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-top: -10px;
            margin-bottom: 10px;
        }
        .checkbox {
            margin: 10px 0;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .footer {
            margin-top: 10px;
            font-size: 12px;
            color: #555;
        }
    </style>
    <script>
        function validateForm() {
            var username = document.getElementById('<%= TextBox1.ClientID %>').value;
            var password = document.getElementById('<%= TextBox2.ClientID %>').value;
            var roleSelected = document.getElementById('roleSelected').innerText;
            var usernameError = document.getElementById('usernameError');
            var passwordError = document.getElementById('passwordError');
            var isValid = true;

            usernameError.innerText = "";
            passwordError.innerText = "";

            if (roleSelected === "Select Role") {
                alert("Please select a role.");
                isValid = false;
            }
            if (username === "") {
                usernameError.innerText = "Username is required.";
                isValid = false;
            }
            if (password === "") {
                passwordError.innerText = "Password is required.";
                isValid = false;
            }

            if (isValid) {
                // Check for valid credentials
                if (username === "vatsal" && password === "123") {
                    alert("Login successful!");
                } else {
                    alert("Invalid username or password.");
                    isValid = false;
                }
            }
            return isValid;
        }

        function selectRole(role) {
            document.getElementById('roleSelected').innerText = role;
            document.getElementById('<%= dropdownButton.ClientID %>').value = role;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Login To The Account"></asp:Label>
                <div class="dropdown">
                    <asp:Button ID="dropdownButton" CssClass="dropbtn" runat="server" Text="Select Role" OnClientClick="return false;" />
                    <div class="dropdown-content">
                        <a href="javascript:void(0)" onclick="selectRole('Admin')">Admin</a>
                        <a href="javascript:void(0)" onclick="selectRole('User')">User</a>
                    </div>
                </div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <span id="usernameError" class="error"></span>
                <span id="roleSelected" style="display:none;">Select Role</span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>
                <span id="passwordError" class="error"></span>
                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox" Text="Stay Signed in" />
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" />
                <div class="footer">
                    <p>Forgot your password? <a href="#">Click here</a></p>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>--%>


<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="newProject.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            background: url('https://www.example.com/background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        #form1 {
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }
        .label {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
            display: block;
        }
        .dropdown {
            position: relative;
            width: 100%;
            margin: 10px 0;
        }
        .dropbtn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: left;
            box-sizing: border-box;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            min-width: 100%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1;
            border-radius: 5px;
        }
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .textbox {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-top: -10px;
            margin-bottom: 10px;
        }
        .checkbox {
            margin: 10px 0;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .footer {
            margin-top: 10px;
            font-size: 12px;
            color: #555;
        }
    </style>
    <script>
        function validateForm() {
            var username = document.getElementById('<%= TextBox1.ClientID %>').value;
            var password = document.getElementById('<%= TextBox2.ClientID %>').value;
            var roleSelected = document.getElementById('roleSelected').innerText;
            var usernameError = document.getElementById('usernameError');
            var passwordError = document.getElementById('passwordError');
            var isValid = true;

            usernameError.innerText = "";
            passwordError.innerText = "";

            if (roleSelected === "Select Role") {
                alert("Please select a role.");
                isValid = false;
            }
            if (username === "") {
                usernameError.innerText = "Username is required.";
                isValid = false;
            }
            if (password === "") {
                passwordError.innerText = "Password is required.";
                isValid = false;
            }

            if (isValid) {
               
                if (username === "vatsal" && password === "123") {
                    alert("Login successful!");
                } else {
                    alert("Invalid username or password.");
                    isValid = false;
                }
            }
            return isValid;
        }

        function selectRole(role) {
            document.getElementById('roleSelected').innerText = role;
            document.getElementById('<%= dropdownButton.ClientID %>').value = role;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Login To The Account"></asp:Label>
                <div class="dropdown">
                    <asp:Button ID="dropdownButton" CssClass="dropbtn" runat="server" Text="Select Role" OnClientClick="return false;" />
                    <div class="dropdown-content">
                        <a href="javascript:void(0)" onclick="selectRole('Admin')">Admin</a>
                        <a href="javascript:void(0)" onclick="selectRole('User')">User</a>
                    </div>
                </div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <span id="usernameError" class="error"></span>
                <span id="roleSelected" style="display:none;">Select Role</span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>
                <span id="passwordError" class="error"></span>
                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox" Text="Stay Signed in" />
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" OnClick="Button1_Click1" />
                <div class="footer">
                    <p>Forgot your password? <a href="#">Click here</a></p>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>--%>





