<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="TP3_ACHAMRAR_YASSIR.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="google-signin-client_id" content="1001636550520-492a5amlujop7s41ptf56bg6q6qk2e74.apps.googleusercontent.com">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <!--ShowCase Section-->
    <div id="showcaseSection">
        <div class="container">
            <div class="d-flex justify-content-start">
                <div class="col-md-4 p-0">
                    <label class="display-4 text-white">SMART CITY CONFERENCE <span class="text-info">2018</span></label>

                    <label class="text-light font-weight-bold"><span class="text-info">Register </span>&<span class="text-info"> Join</span></label>
                </div>
            </div>
        </div>
    </div>

    <!--Register Section-->

    <div id="registerSection" class="py-4">
        <div class="container">
            <div class="d-flex justify-content-center">
                <div class="col-md-4  border border-info p-4 rounded">

                    <h1 class="text-secondary mb-2">Register <span class="text-info">&</span> Get Your Invitation to the Conference</h1>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtEmail" placeholder="Email" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Entrez votre Email !" Display="Dynamic" ControlToValidate="txtEmail" ForeColor="red"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Entrer un Email Correct!" ForeColor="red" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>

                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtConfirmEmail" placeholder="Confirm Email" />

                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfEmail" runat="server" ErrorMessage="Confirmez votre Email !" Display="Dynamic" ControlToValidate="txtConfirmEmail" ForeColor="red"></asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidatorEmail" runat="server" ErrorMessage="The Email must be the same!"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtConfirmEmail" ControlToCompare="txtEmail"></asp:CompareValidator>
                    </div>

                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtFullName" placeholder="Full Name" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Entrez votre Nom !" ControlToValidate="txtFullName" Display="dynamic" ForeColor="red"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorName" runat="server" ErrorMessage="Entrer un Nom Correct!" ForeColor="red" ControlToValidate="txtFullName" ValidationExpression="^[A-Za-zÀ-ú]+ [A-Za-zÀ-ú]*$" Display="dynamic"></asp:RegularExpressionValidator>

                    </div>

                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtPassword" placeholder="Password" TextMode="Password" />

                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ErrorMessage="Entrez votre Password !" Display="Dynamic" ControlToValidate="txtPassword" ForeColor="red"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorConfPass" runat="server" ErrorMessage="Le mot de passe doit etre composé de 8 à 16 caractéres et doit contenir au moins un chiffre!" ForeColor="red" ControlToValidate="txtPassword" Display="Dynamic" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,15})$"></asp:RegularExpressionValidator>

                    </div>

                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtConfirmPassword" placeholder="Confirm Password" TextMode="Password" />

                        <asp:CompareValidator ID="CompareValidatorConfPass" runat="server" ErrorMessage="The Password must be the same!"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"></asp:CompareValidator>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfPass" runat="server" ErrorMessage="Confimez votre Password !" Display="Dynamic" ControlToValidate="txtConfirmPassword" ForeColor="red"></asp:RequiredFieldValidator>

                    </div>

                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtPhoneNumber" placeholder="Phone Number" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatTel" runat="server" ErrorMessage="Entrez votre Numero de telephone !" Display="Dynamic" ControlToValidate="txtPhoneNumber" ForeColor="red"></asp:RequiredFieldValidator>

                    </div>

                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtMainJob" placeholder="Main Job" />
                    </div>

                    <asp:Button ID="btnRegister" Text="Register" runat="server" CssClass="btn btn-info btn-block" OnClick="btnRegister_Click" />

                    <p class="text-center">OR</p>
                    <div class="d-flex justify-content-center align-items-center flex-column">

                        <div id="sign" class="g-signin2  mb-2 w-100" data-onsuccess="onSignIn"></div>

                        <br />
                        <div id="btnFb" class="fb-login-button" scope="public_profile,email"
                            onlogin="checkLoginState();" data-width="334px" data-size="large" data-button-type="continue_with" data-auto-logout-link="false" data-use-continue-as="false">
                        </div>



                    </div>


                    <asp:Label ID="LabelError" runat="server" ForeColor="Red" Text=""></asp:Label>






                </div>
            </div>

        </div>
    </div>





    <script src="https://apis.google.com/js/platform.js" async defer></script>


    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '2249053955398808',
                cookie: true,
                xfbml: true,
                version: 'v6.0'
            });



            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });



        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));


        $(window).resize(function () {
            var width = $('#btnRegister').width();


            $('#btnFb').attr('data-width', width);

        })



        function statusChangeCallback(response) {
            if (response.status === 'connected') {
                alert('Logged in And authentified!');
            }
            else {
                alert('Not authentified!');
            }

        }

        function checkLoginState() {
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });
        }



    </script>



</asp:Content>
